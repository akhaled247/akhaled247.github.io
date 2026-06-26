# SEO Manual Steps (Your Action Checklist)

These steps **cannot** be done in the Jekyll repo alone. Complete them after the on-site SEO changes deploy to `https://www.aakhaled.com`.

On-site work (meta tags, schema, project pages, navigation) is already in the codebase. **This file is what you still need to do.**

\---

## Before you start

* \[ ] Confirm site is live at **https://www.aakhaled.com** after you push/deploy
* \[ ] Public email on site is **me@aakhaled.com** — use this everywhere for consistency

\---

## 1\. Google Search Console (do first)

### One-time baseline (before checking results)

* \[X] Open [Google Search Console](https://search.google.com/search-console)
* \[X] Performance → last 28 days → note current impressions/clicks for:

  * `akhaled247`
  * `Abdullah Khaled` - 4 clicks, 25 impressions
  * `Abdullah Khaled engineering portfolio`
  * `OralVision` - 0 clicks, 14 impressions
  * `REEFSCAPE`- N/A
  * `Mantik`- N/A
  * `WatchFall`- N/A
* \[X] Sitemaps → submit **https://www.aakhaled.com/sitemap.xml**
* \[X] URL Inspection → **Request indexing** for:

  * `https://www.aakhaled.com/`
  * `https://www.aakhaled.com/about/`
  * `https://www.aakhaled.com/projects/`
  * `https://www.aakhaled.com/personal/oralvision/`
  * `https://www.aakhaled.com/first/reefscape/`
  * `https://www.aakhaled.com/personal/mantik/`
* \[X] Confirm **User-declared canonical** is `www.aakhaled.com` (not `github.io`)
* \[X] robots.txt tester: main pages **Allowed**; `/tags/`, `/categories/`, `/page/` **Disallowed**

### 30 days after deploy

* \[ ] Re-check Performance for same queries — goal: site **#1** for `akhaled247` and `Abdullah Khaled engineering portfolio`
* \[ ] Google search manually:

  * `akhaled247`
  * `Abdullah Khaled engineering portfolio`
  * `OralVision Abdullah Khaled`
  * `Mantik FTC curriculum akhaled247`
* \[ ] Fix any Indexing or Canonical errors in GSC

### 90 days

* \[ ] Compare impressions/CTR vs baseline
* \[ ] Consider adding a `/blog/` later if long-tail queries are still weak

See also [SEO\_SEARCH\_CONSOLE.md](SEO_SEARCH_CONSOLE.md) and [GOOGLEBOT-CRAWL-AUDIT.md](GOOGLEBOT-CRAWL-AUDIT.md).

\---

## 2\. GitHub (https://github.com/akhaled247)

**Why:** GitHub currently ranks #1 for `akhaled247`. Bridge it to your site.

* \[X] Profile bio: `Abdullah Khaled · Engineering Portfolio → www.aakhaled.com`
* \[X] Pin repository: `akhaled247.github.io`
* \[X] Pinned repo README top line: name + link to **https://www.aakhaled.com**
* \[X] Key repo READMEs (OralVision, PLTW, FRC): add one line linking to matching portfolio page

\---

## 3\. LinkedIn (https://www.linkedin.com/in/akhaled247/)

**Why:** LinkedIn currently ranks #1 for `Abdullah Khaled`.

* \[ ] Headline includes **Engineering Portfolio** or **Robotics / Software Engineer**
* \[Can't] Featured section: link to **https://www.aakhaled.com**
* \[ ] About section first line: `Abdullah Khaled (akhaled247) — www.aakhaled.com`
* \[ ] Contact info / website field: **https://www.aakhaled.com**

\---

## 4\. YouTube (https://www.youtube.com/@akhaled247)

* \[ ] Channel description: full name, handle `akhaled247`, link to site
* \[ ] Channel links: Website → **www.aakhaled.com**, plus GitHub + LinkedIn
* \[ ] Video descriptions on project demos: link to matching portfolio page

\---

## 5\. Project sites you control

|Site|Action|
|-|-|
|[oral-vision.github.io](https://oral-vision.github.io/)|Credits page: **Abdullah Khaled (akhaled247)** + link to `/personal/oralvision/`|
|[mantik.netlify.app](https://mantik.netlify.app/)|Footer/about: creator credit + link to `/personal/mantik/`|
|[Photo Lab app](https://www.aakhaled.com/photo-lab/)|`<title>`, meta description, footer: "by Abdullah Khaled (akhaled247)" + link to portfolio|

\---

## 6\. Ask others (email / DM)

|Organization|Ask for|
|-|-|
|**ITKAN Robotics**|News post featuring Mantik + link to `/personal/mantik/`|
|**Ma'ruf Dallas**|Website bio or IG story tagging you + link to `/about/`|
|**BU RISE**|Program IG mention + link to site or `/resume/`|
|**Conrad Challenge**|Alumni/project listing with your name + link to `/personal/oralvision/` (if available)|

\---

## 7\. WatchFall (no external site yet)

* \[ ] Optional: create a small GitHub repo or competition submission page with your name + link to `/personal/watchfall/`
* \[ ] On-site page is already optimized; external mention helps AI Overviews cite you

\---

## 8\. DNS / domain check

* \[X] `https://www.aakhaled.com` loads with valid HTTPS
* \[X] `https://akhaled247.github.io` redirects to custom domain (or at least links prominently to it)
* \[X] GitHub Pages repo settings: custom domain = **www.aakhaled.com**

\---

## Success targets (90 days)

|Query|Target|
|-|-|
|`akhaled247`|**www.aakhaled.com** #1 (currently GitHub)|
|`Abdullah Khaled engineering portfolio`|Site top 3, ideally #1|
|`Abdullah Khaled`|Site in top 3 alongside LinkedIn|
|`OralVision` / `Mantik` / `REEFSCAPE` + your name|Matching project page indexed and visible|

\---

## What the repo already did (no action needed)

* Person + WebSite JSON-LD with `alternateName: akhaled247`
* `akhaled247` in visible homepage/about copy
* Project pages with answer-first summaries + `CreativeWork` schema
* All major projects on `/projects/` + section nav (FIRST, Personal, PLTW)
* Canonical email **me@aakhaled.com** in config/schema
* Removed broken SearchAction schema

After you complete this checklist, SEO is mostly **maintenance**: re-request indexing when you add major projects, and refresh off-site bios if your handle or URL changes.

