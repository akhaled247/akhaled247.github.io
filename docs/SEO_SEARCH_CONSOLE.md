# Search Console checklist (post-deploy)

Canonical site URL is set in `_config.yml` as `https://www.aakhaled.com`. Built `robots.txt` and `sitemap.xml` use that host via `site.url`.

## One-time setup

1. **GitHub Pages** repo settings: Custom domain = `www.aakhaled.com`. Repo root `CNAME` file must match (already in repo).
2. **DNS**: Point `www` to GitHub Pages (`akhaled247.github.io` or current GitHub IPs/CNAME target per [GitHub docs](https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site)).
3. **Search Console**: Prefer a **Domain** property for `aakhaled.com` (covers apex + `www`), or add URL-prefix property `https://www.aakhaled.com/`.
4. **Verification**: `google_site_verification` meta is emitted from `_includes/seo.html` when set in `_config.yml`.

## After each meaningful deploy

1. **Sitemaps**: Submit `https://www.aakhaled.com/sitemap.xml` (Sitemaps report).
2. **URL Inspection**: Live test at least:
   - `https://www.aakhaled.com/`
   - `https://www.aakhaled.com/about/`
   - `https://www.aakhaled.com/resume/`
   - One flagship project (e.g. `/first/reefscape/` or `/personal/oralvision/`)
3. Confirm **User-declared canonical** matches preferred URL; fix DNS/`url` in `_config.yml` if Google picks `github.io` or bare apex incorrectly.
4. **robots.txt** tester in GSC: important URLs Allowed; `/tags/`, `/categories/`, `/page/` Disallowed as intended.

## Monthly

- Performance (queries, pages, CTR dips)
- Page indexing (error spikes, valid page count drops)
- Manual actions + Security issues (should be empty)

See also [GOOGLEBOT-CRAWL-AUDIT.md](GOOGLEBOT-CRAWL-AUDIT.md).
