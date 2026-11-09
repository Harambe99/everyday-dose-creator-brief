# Everyday Dose — Coffee+ Mild Creator Brief

Static one-page creator brief for the Everyday Dose Coffee+ Mild Roast posting campaign.
What to say, what not to say, how to shoot it, and six full scripts.

**Live:** https://everyday-dose-creator-brief.onrender.com/

## Hosting

Deployed as a **Render Static Site** (not a Web Service) — no server, no cold starts,
served from Render's CDN. Pushes to `main` auto-deploy.

| Setting | Value |
|---|---|
| Build command | *(leave blank)* |
| Publish directory | `.` |
| Service | `srv-dbopf3bl550s73ag8gt0` |

## Structure

```
index.html                  the whole page — HTML, CSS and JS inline, no dependencies
fonts/
  archivo.woff2             display face (variable, 400-900)
  plus-jakarta-sans.woff2   body face (variable, 400-700)
  dm-mono-normal-*.woff2    the small uppercase labels, matching the pack
img/
  holo.jpg                  hero foil background (generated in Higgsfield)
  pack-cutout.png           Mild Roast pouch, background removed
  pack-mild.jpeg            same pouch, original, used for the link preview
  ingredients.jpeg          science-backed ingredients
  how-to-dose.jpeg          pour / mix / enjoy
  supplement-facts.jpeg     label panel, 45mg caffeine
  new-look.jpeg             new vs old packaging
  pack-back.jpeg            back of pouch
  real-results.jpeg         customer stats
  logo.png                  Everyday Dose wordmark, white on black
  favicon.png               512px square
  apple-touch-icon.png      180px square
```

Fonts are self-hosted, so the page makes **no third-party requests** at all.

## What's interactive

- **Copy buttons** on every review, hook and full script. Scripts copy with `[CTA]`
  in place of the placeholder chip.
- **Before you post** checklist saves to `localStorage`, so a creator can tick boxes
  on their phone and come back to it.
- **Light and dark** both designed. Follows the OS by default; the ◐ button in the
  header overrides and remembers.
- **Scroll-spy nav** highlights the current section and keeps that chip in view on
  mobile.

## Editing

All copy is plain HTML in `index.html`. Search for the section heading to find it.

Two things to be careful of:

- `.hook` is the hook-bank **card** class. The opening line inside a script is
  `.openline` — they were the same class at first and the script lines inherited
  the card's border and padding.
- Items in the Say / Never say columns are CSS grid rows. The `<em>` clarifier is a
  third grid item and must stay pinned to `grid-column:2`, or each word wraps onto
  its own line in the 16px bullet column.

## Deploying

```bash
./deploy.sh "what changed"
```

Pushes to `main`; Render redeploys in about 30 seconds.
