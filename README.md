# Revelation Walls Virtual Gallery

A Three.js-powered virtual gallery showcasing **Revelation Walls** — 100 NFT artworks by Candace Marquette. Walk through a castle-like environment, explore art on the walls, and enjoy ambient music.

## Live Demo

**Deploy to GitHub Pages** (see below) — your gallery will be live at:

`https://<username>.github.io/revelation-walls-gallery/`

## Features

- **3D virtual environment** — Castle walls, water, stars
- **100 NFT artworks** — Loaded from Internet Computer (ICP)
- **Pointer-lock controls** — Click to enter, WASD to move, mouse to look
- **Optional music player** — 44Hz meditation track (add your own file)
- **Static hosting** — No server needed; works on GitHub Pages, Netlify, Vercel, etc.

## Quick Start (Local)

1. Clone the repo
2. Serve the folder with any static server, e.g.:

   ```bash
   # Python
   python -m http.server 8000

   # Node (npx)
   npx serve .

   # Or open index.html directly (some features may not work due to CORS)
   ```

3. Open `http://localhost:8000` (or the port your server uses)

## Deploy to GitHub Pages (Free)

1. **Create a new GitHub repo** named `revelation-walls-gallery`

2. **Push this folder:**
   ```bash
   cd revelation-walls-gallery
   git init
   git add .
   git commit -m "Revelation Walls Virtual Gallery"
   git branch -M main
   git remote add origin https://github.com/<your-username>/revelation-walls-gallery.git
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to **Settings → Pages**
   - Source: **Deploy from a branch**
   - Branch: **main** → folder: **/ (root)**
   - Save

4. **Visit:** `https://<your-username>.github.io/revelation-walls-gallery/`

## Alternative: Netlify / Vercel

- **Netlify:** Drag and drop the folder at [app.netlify.com/drop](https://app.netlify.com/drop)
- **Vercel:** `npx vercel` from the project folder

## Optional: Background Music

For the full experience, add `Music/44hz Meditation.mp3` to the `Music/` folder. The gallery works without it; the music player will simply be unavailable.

## Tech

- **Three.js** — 3D rendering
- **Images** — Hosted on Internet Computer (`6mgqg-lqaaa-aaaag-abb2q-cai.raw.ic0.app`)
- **Data** — CSV files (`revelation_walls_NFTs.csv`, `price_list.csv`)

## Structure

```
revelation-walls-gallery/
├── index.html              # Main gallery
├── revelation_walls_NFTs.csv
├── price_list.csv
├── fonts/
├── js/                     # Three.js + addons
└── Music/                  # (Optional) 44hz Meditation.mp3
```

## License

Gallery code: use as you like. Art and music: respect their respective rights.
