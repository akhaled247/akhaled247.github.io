# Performance baseline (Lighthouse)

Run locally after deploy or against production:

```bash
npx lighthouse@11.6.0 https://www.aakhaled.com/ --only-categories=performance --preset=desktop --view
```

## Snapshot (2026-04-14)

| URL | Lighthouse performance (desktop) |
|-----|-----------------------------------|
| `https://www.aakhaled.com/` | **0.72** |

Inner URLs can be added the same way; if PowerShell `ConvertFrom-Json` shows `score: null`, open the HTML report (`--view`) or inspect `runtimeError` in the JSON.

## Likely next wins (theme + content)

- Compress or resize large hero / project images; prefer WebP/AVIF where you control assets.
- Third-party scripts (Font Awesome CDN, Google tag) cost main-thread time; only remove or defer if analytics/brand requirements allow.
- Keep meaningful `width`/`height` on `<img>` (reduces CLS); `loading="lazy"` below the fold.

See also [`_includes/head.html`](../_includes/head.html) (preload of `main.css` and hero image when set).
