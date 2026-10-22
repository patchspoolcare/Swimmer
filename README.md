# Swimmer

Route and water-chemistry log for Patch's Pool Care. It's a web app hosted on GitHub Pages and stores its data in Firebase (Firestore + Authentication).

## Files
- `index.html`: the whole app
- `config.js`: Firebase connection settings (not secret)
- `firestore.rules`: database security rules. Paste these into Firebase → Firestore Database → Rules → Publish.
- `sw.js`: lets the app open without signal
- `manifest.webmanifest`, `icons/`: Home Screen name and icon

## Who can do what
- The first person to sign in and tap **Make me the owner** becomes the owner (admin).
- Anyone else who creates an account waits on a "Waiting for approval" screen. The owner approves them under **Crew**.
- **Employee**: route, map, logging visits, and the client list (view only).
- **Employee + Filters**: the same, plus the Filters tab and filter buttons on each visit.
- **Admin**: everything, including Crew and backups, but can't change the owner or other admins.
- **Owner**: everything, and the only one who can make or change admins.

## Moving data from the old Pool Log
1. In the old Pool Log: Route → **Back up data**, and save the file.
2. In Swimmer, signed in as the owner: Route → **Restore backup**, and pick that file.
