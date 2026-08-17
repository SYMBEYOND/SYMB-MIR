# SYMB-MIR — Tauri Shell

This wraps `symb-mir-popout.html` in a native app, so the camera works
with zero server, zero port, zero Terminal window, zero browser tab.
Download it, double-click it, it works.

## The easy path: let GitHub build it for you

You never need Rust installed on your own machine for this. A workflow
at `.github/workflows/release.yml` builds a real Mac app and a real
Windows app in the cloud every time you push a version tag.

1. Push this whole folder to the SYMB-MIR repo (as-is — no setup step
   needed first).
2. Tag a release:
   ```
   git tag v0.1.0
   git push origin v0.1.0
   ```
3. Wait a few minutes. Check the **Actions** tab on GitHub — you'll see
   it building for both macOS and Windows.
4. When it finishes, go to the repo's **Releases** page. You'll find:
   - a `.dmg` (Mac) — double-click, drag to Applications, done
   - a `.msi` or `.exe` (Windows) — double-click, done
   
   No port. No Terminal. No Python. Just an app.

The release is created as a **draft** on purpose — review it, then
click "Publish" on GitHub when you're happy with it. Anyone you share
the Releases link with downloads a real app from there.

## What's here
- `symb-mir-popout.html` — your file, with the — undo button and the
  grabbable/wheel-scrollable prompt scrollbar.
- `src-tauri/` — the Rust shell. `main.rs` does nothing but boot the
  window; the only native permission wired in is `setAlwaysOnTop`,
  which is what your Keep Front button already calls.
- `src-tauri/icons/` — a placeholder icon set (dark square, purple
  ring) in every format Tauri needs. Swap it anytime — see below.
- `.github/workflows/release.yml` — the cloud build.
- `package.json` — just enough to run the Tauri CLI via npm.

## If you'd rather build locally instead of on GitHub
1. Install Rust: https://www.rust-lang.org/tools/install
2. `npm install`
3. `npm run tauri dev` (test with hot reload) or `npm run tauri build`
   (produces the same `.app`/`.exe` under
   `src-tauri/target/release/bundle/`)

## To use a real logo instead of the placeholder icon
Once you have a logo image, either locally (with Rust installed) or
you can ask me to regenerate it from an image you upload:
```
npm run tauri icon path/to/your-logo.png
```
That overwrites everything in `src-tauri/icons/` with the correct
sizes automatically — no need to touch `tauri.conf.json` again.

## Notes
- `distDir` in `tauri.conf.json` points at the project root and loads
  `symb-mir-popout.html` directly — no renaming needed.
- macOS camera permission text (`NSCameraUsageDescription`) isn't yet
  wired into the CI build — if macOS silently denies the camera in
  the built app with no permission prompt, that's the reason. Flag it
  and I'll add the Info.plist step to the workflow.

