# bitcoineindhoven.nl

Source for **[bitcoineindhoven.nl](https://bitcoineindhoven.nl)** — the website for the Bitcoin Eindhoven meetup.

A bitcoiner meetup in Eindhoven, The Netherlands. We gather in the wild to discuss, help, and enjoy talking about bitcoin — over food and drinks paid in sats.

- Meetup: <https://www.meetup.com/bitcoinmeetup/>
- X: <https://x.com/bitcoineindhove>
- Telegram: <https://t.me/+ExwAFepy_HlmN2E0>

## How it works

Plain static HTML/CSS hosted on **GitHub Pages**. Push to `main`, and within a minute it's live on `bitcoineindhoven.nl` (the domain is wired via `CNAME`).

```
index.html        — the whole page (hand-edited when adding events)
css/style.css     — styles
img/              — logos and meetup photos
CNAME             — points the domain at GitHub Pages
```

There is no build step. Edit, commit, push, done.

## Adding a new event

Open `index.html`. There are two relevant sections, each marked with a clear comment.

### When a new upcoming event is announced

1. Find the `<!-- UPCOMING -->` block.
2. If there's already a featured event there that has now passed, **first** move it into the past-events grid (see below).
3. Replace the `<article class="featured">` with the new event's details:
   - `<span class="featured-tag">` — short label, e.g. `Meetup #9`
   - `<h3>` — the headline
   - The three `<span>`s in `.featured-meta` — date / venue / price
   - Body paragraphs
   - The "Sign up on Meetup" link

### When the upcoming event passes

Move it into the past-events grid as a card. There are two card types:

**Plain text card:**
```html
<article class="card">
  <div class="number">Meetup #9</div>
  <h4>Short headline</h4>
  <div class="date"><span class="when">15 September 2026</span><span class="sep"></span><span class="where">PHOOD Farm</span></div>
  <p class="desc">A short description of what happened.</p>
</article>
```

**Card with a poster photo** (use this when you have a meetup poster — its burned-in title becomes the card's title):
```html
<article class="card has-photo">
  <div class="photo"><img src="img/meetup_9.jpg" alt="Meetup #9" /></div>
  <div class="number">Meetup #9</div>
  <h4>Short headline</h4>
  <div class="date"><span class="when">15 September 2026</span><span class="sep"></span><span class="where">PHOOD Farm</span></div>
  <p class="desc">A short description of what happened.</p>
</article>
```
(With `has-photo`, the `<h4>` and `<div class="number">` are hidden by CSS. Keep them in the HTML anyway for accessibility / fallback.)

Paste it as the **first** card under `<div class="event-grid">` (newest first), then bump the `<span class="count">N events</span>` in the section title.

## Logo assets

- `img/bitcoin_eindhoven_black.png` — original wordmark, dark text on transparent (kept as a reference; not currently used)
- `img/bitcoin_eindhoven_white.png` — wordmark with white "bitcoin" text, used on the dark site
- `img/bitcoin_b.png` — round B icon alone, used as the favicon

If you ever find the source PSD/AI of the logo, drop higher-res replacements at the same filenames and bump `.hero-logo width` in `css/style.css` for a sharper hero.

## License

[MIT](LICENSE)
