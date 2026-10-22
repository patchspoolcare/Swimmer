# Swimmer — notes for Claude

- The whole app is `index.html`. Firebase settings are in `config.js`.
- **More than one business runs this app.** The main app (repo root) is Patch's Pool Care. Each extra business has its own folder listed in `copies.txt`, with its own `config.js` (its own Firebase project).
- **Every change to the app must reach every business.** After editing `index.html`, `sw.js`, `manifest.webmanifest` or `icons/`, run `./sync-copies.sh` before committing. Never edit the copies in the business folders directly, and never overwrite a folder's `config.js`.
- When you change `firestore.rules`, tell the user that **each** business's Firebase project needs the new rules pasted in (Firestore Database → Rules → Publish).
- Bump `var BUILD="..."` in `index.html` and the version number in `sw.js` when shipping, so phones pick up the update.
