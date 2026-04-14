# Googlebot Crawl Simulation – Jekyll Site Audit

This document summarizes how Googlebot would crawl this site and identifies **indexing blockers** and **duplication** issues. Findings are based on the built `_site`, `robots.txt`, `sitemap.xml`, and layout/SEO includes.

---

## 1. Crawl simulation (what Googlebot sees)

### 1.1 Entry points

- **robots.txt**: `https://www.aakhaled.com/robots.txt` (canonical host from `_config.yml` `url`)  
  - Declares `Sitemap: https://www.aakhaled.com/sitemap.xml`
- **Sitemap**: Used as primary discovery for URLs to crawl.

### 1.2 Allowed vs disallowed (robots.txt)

| Path | Rule | Effect |
|------|------|--------|
| `/` | Allow (default) | Homepage and all content under `/` allowed |
| `/sitemap.xml` | Allowed | Sitemap fetchable |
| `/assets/js/` | **Disallow** | JS not crawled (expected; not for indexing) |
| `/assets/css/` | **Disallow** | CSS not crawled (expected) |
| `/tags/` | **Disallow** | Tag archive pages not crawled |
| `/categories/` | **Disallow** | Category archive pages not crawled |
| `/page/` | **Disallow** | Pagination (e.g. `/page/2/`) not crawled |
| `/assets/images/` | Allow | Images allowed (for rendering/LCP) |
| `/assets/favicons/` | Allow | Favicons allowed |

**Indexing blockers:** None for main content. Tag/category archives and pagination are blocked by choice (reduces thin/duplicate content).

### 1.3 Canonical and meta robots

- **Canonical:** Every page has `<link rel="canonical" href="...">` from `_includes/seo.html`, using `page.url` with `/index.html` replaced by `/`. No `noindex` in layouts or defaults.
- **Result:** No accidental indexing blockers from canonicals or meta robots; duplicate URLs are consolidated to the canonical.

---

## 2. Duplication issues (identified and fixed)

### 2.1 Homepage duplicate in sitemap (fixed)

- **Issue:** Both root `index.html` and `_pages/index.md` have URL `/`. jekyll-sitemap included both, so `/` appeared **twice** in `sitemap.xml`.
- **Risk:** Duplicate signals for the same page; possible crawl waste or ranking split.
- **Fix:** `sitemap: false` added to root `index.html` so only the page from `_pages/index.md` (full content) is in the sitemap. One homepage URL remains.

### 2.2 404 in sitemap (prevented)

- **Issue:** 404 page could be included in the sitemap by default.
- **Fix:** `sitemap: exclude: 'yes'` in `404.html` front matter so the error page is not listed in the sitemap.

### 2.3 Other duplicate / URL variants

- **Trailing slash:** Permalinks use trailing slash (e.g. `/about/`). Canonical uses the same. GitHub Pages typically redirects `/about` → `/about/`, so no duplicate indexing expected.
- **Paginated pages:** `Disallow: /page/` in robots.txt prevents indexing of pagination; no need for extra noindex.

---

## 3. Sitemap contents (post-fix)

After fixes, the sitemap includes:

- **Pages:** Home (`/`), about, resume, projects, section homepages (first, personal, pltw-engineering), and all project/subsection pages (e.g. first/reefscape, personal/oralvision, pltw-engineering/automata, etc.).
- **Static / non-HTML:** PDFs under `assets/images/PLTW/` (e.g. mvmultisimcombined.pdf, rngreport.pdf) and `rendercv_output/Abdullah_Khaled_CV.pdf`. `rendercv_output/Abdullah_Khaled_CV.html` is excluded from the sitemap via `_config.yml` `sitemap.exclude` (duplicate of resume content).

**RenderCV:** `_config.yml` `defaults` set `sitemap: false` for path `rendercv_output`, then `sitemap: true` for `rendercv_output/Abdullah_Khaled_CV.pdf` so only the primary CV PDF is listed (plus all HTML pages as usual). Duplicate HTML + variant PDFs stay on disk for direct links but drop out of `sitemap.xml`.

**Optional:** To drop PLTW PDFs or the primary CV PDF from the sitemap, add their paths to `sitemap.exclude`, or `exclude:` those paths from the Jekyll build.

---

## 4. Summary table

| Item | Status | Notes |
|------|--------|--------|
| robots.txt | OK | Clear Allow/Disallow; Sitemap declared |
| Sitemap | OK | Single homepage URL after fix; 404 excluded |
| Canonical | OK | Set on all pages via seo.html |
| noindex | OK | Not used on main content |
| Homepage duplicate | Fixed | Root index.html excluded from sitemap |
| 404 in sitemap | Prevented | sitemap exclude on 404 |
| Tag/category archives | Blocked | Disallow in robots.txt (intentional) |
| Pagination | Blocked | Disallow /page/ (intentional) |
| PDFs / rendercv in sitemap | Optional | Can exclude if you don’t want them indexed |

---

## 5. Recommended checks in production

1. **Google Search Console**  
   - Submit `sitemap.xml` and check “Coverage” / “Sitemaps” for errors or “Duplicate without user-selected canonical.”

2. **URL Inspection**  
   - For key URLs (e.g. `/`, `/about/`, `/first/reefscape/`), use “URL Inspection” and confirm “URL is on Google” and that the canonical matches the preferred URL.

3. **robots.txt Tester**  
   - In Search Console, use the robots.txt tester to confirm that important pages are “Allowed” and that blocked paths (e.g. `/page/`, `/tags/`) behave as intended.

This audit reflects the state of the repo after the duplicate-homepage and 404 sitemap fixes; run `bundle exec jekyll build` and re-check `_site/sitemap.xml` and `_site/robots.txt` after any config or permalink changes.
