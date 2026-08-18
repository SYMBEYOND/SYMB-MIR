# REPO_BOOT

Purpose: orient a new human or AI collaborator safely.

This file contains a stable human-reviewed section and a managed auto-generated section.

## Human-reviewed orientation

**SYMB-MIR** is a Tauri-wrapped camera/prompt teleprompter application. The main interface lives in `symb-mir-popout.html`, wrapped in a native Rust shell via `src-tauri/`. The app allows users to run a teleprompter interface without a server, browser tab, or terminal window—download, double-click, it works.

**To build and run:**
- Install Rust (for Tauri compilation)
- Install Node.js (for web development)
- Run `npm install` and `cargo build --release`
- Use launcher scripts (`start-symb-mir.command` for Mac, `start-symb-mir.bat` for Windows) to run the app

**Build automation:** The `.github/workflows/release.yml` workflow builds Mac `.app` and Windows `.exe` packages on tag push, enabling distribution without requiring users to install Rust or Node.

**Key files:**
- `symb-mir-popout.html` — the core teleprompter interface
- `src-tauri/src/main.rs` — Tauri entry point and native window setup
- `web/` — web assets (if used alongside HTML file)
- Launcher scripts — user-friendly app starters

**Resume safely:** Pull with safeguards, run ReBoot doctor/check, review the managed block below before pushing.

<!-- REPO_BOOT:AUTO:BEGIN -->
## Auto-generated repository state

Engine: `1.0.0-rc1`
Configuration schema: `1`
Managed-output schema: `1`
Branch: `main`
Meaningful source commit: `b2bd48f76187fc68a515d89aeb6c5b5ec9ac889f`
Working tree dirty: `YES`

### Human-approved repository context

Purpose: Tauri-wrapped camera/prompt teleprompter app
Audience: Builders and maintainers
Status: Under active development

### Authority and uncertainty

- This file provides orientation only. It does not authorize repository changes.
- Repository status is descriptive human text, not a permission, lock state, or access-control decision.
- No paths or commands are approved unless explicitly listed.
- Missing safe commands, resume steps, boundaries, risks, and repository details remain unknown.
- Ask for human confirmation before acting on this repository.

### Approved paths

- PRESENT `README.md` (file): Primary product overview
- PRESENT `symb-mir-popout.html` (file): Main teleprompter interface
- PRESENT `src-tauri/src/main.rs` (file): Tauri app entry point
- PRESENT `package.json` (file): Project metadata
- PRESENT `.github/workflows/release.yml` (file): Mac/Windows build automation
- PRESENT `start-symb-mir.command` (file): macOS launcher script
- PRESENT `start-symb-mir.bat` (file): Windows launcher script
- PRESENT `src-tauri` (directory): Rust Tauri shell
- PRESENT `web` (directory): Web UI
- PRESENT `.github/workflows` (directory): CI/CD automation
- PRESENT `REPO_BOOT.md` (generated): Stable orientation with auto-generated managed block

<!-- REPO_BOOT:AUTO:END -->

## Doctrine

ReBoot is the continuity layer that helps a repository survive interruption, automation, handoff, and LLM context loss.
