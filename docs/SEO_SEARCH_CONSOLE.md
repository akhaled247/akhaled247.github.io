# Search Console checklist (post-deploy)

Canonical site URL is set in `_config.yml` as `https://www.aakhaled.com`. Built `robots.txt` and `sitemap.xml` use that host via `site.url`.

**Off-site tasks (GitHub, LinkedIn, etc.):** see [SEO_MANUAL_STEPS.md](SEO_MANUAL_STEPS.md).

## One-time setup

1. **GitHub Pages** repo settings: Custom domain = `www.aakhaled.com`. Repo root `CNAME` file must match (already in repo).
2. **DNS**: Point `www` to GitHub Pages (`akhaled247.github.io` or current GitHub IPs/CNAME target per [GitHub docs](https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site)).
3. **Search Console**: Prefer a **Domain** property for `aakhaled.com` (covers apex + `www`), or add URL-prefix property `https://www.aakhaled.com/`.
4. **Verification**: `google_site_verification` meta is emitted from `_includes/seo.html` when set in `_config.yml`.

## Baseline queries (record before SEO deploy, compare at 30/90 days)

| Query | Notes |
|-------|--------|
| `akhaled247` | GitHub often ranks #1 today — goal: own site #1 |
| `Abdullah Khaled` | LinkedIn often ranks #1 today |
| `Abdullah Khaled engineering portfolio` | Primary branded target |
| `akhaled247 portfolio` | Branded variant |
| `OralVision` / `OralVision Abdullah Khaled` | Project discovery |
| `REEFSCAPE ITKAN` / `FRC 9128` | FRC season |
| `Mantik FTC curriculum` | Curriculum project |
| `WatchFall Samsung Solve for Tomorrow` | Competition project |

In GSC → **Performance** → filter by query → export or screenshot baseline metrics (impressions, clicks, average position, CTR).

## After each meaningful deploy

1. **Sitemaps**: Submit `https://www.aakhaled.com/sitemap.xml` (Sitemaps report).
2. **URL Inspection**: Live test at least:
   - `https://www.aakhaled.com/`
   - `https://www.aakhaled.com/about/`
   - `https://www.aakhaled.com/projects/`
   - `https://www.aakhaled.com/resume/`
   - Flagship projects: `/personal/oralvision/`, `/first/reefscape/`, `/personal/mantik/`
3. Confirm **User-declared canonical** matches preferred URL; fix DNS/`url` in `_config.yml` if Google picks `github.io` or bare apex incorrectly.
4. **robots.txt** tester in GSC: important URLs Allowed; `/tags/`, `/categories/`, `/page/` Disallowed as intended.
5. **Rich Results Test** (optional): validate homepage Person/WebSite JSON-LD and one project page CreativeWork JSON-LD.

## Monthly

- Performance (queries, pages, CTR dips) — watch baseline queries above
- Page indexing (error spikes, valid page count drops)
- Manual actions + Security issues (should be empty)

## 90-day success metrics

- Site #1 for `akhaled247` and strong position for `Abdullah Khaled engineering portfolio`
- All flagship project URLs indexed with no canonical mismatch
- Branded query CTR ≥ 3% where impressions exist

See also [GOOGLEBOT-CRAWL-AUDIT.md](GOOGLEBOT-CRAWL-AUDIT.md) and [SEO_MANUAL_STEPS.md](SEO_MANUAL_STEPS.md).
