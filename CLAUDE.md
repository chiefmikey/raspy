# Project CLAUDE.md - Raspy

## Project Overview

Raspberry Pi home server management scripts. Shell scripts for server setup, authentication (AWS Secrets Manager + GitHub), Docker/Plex Media Server configuration, system administration, and OS upgrades. Includes dotfiles (`.bashrc`, `.bash_aliases`) for the Pi.

## Tech Stack

- **Language:** Bash (shell scripts), JavaScript (ESM for tooling only)
- **Target:** Raspberry Pi (Linux/Debian)
- **Services:** Plex Media Server (Docker), AWS Secrets Manager
- **Linting:** mikey-pro (ESLint/Prettier/Stylelint)

## Commands

```bash
npm run fix               # ESLint auto-fix all files
```

Shell scripts run directly on the Pi:
```bash
bash scripts/server-system.sh      # System update/upgrade
bash scripts/server-auth.sh        # GitHub auth via AWS Secrets Manager
bash scripts/server-reboot.sh      # Reboot automation
bash scripts/server-fetch.sh       # Remote file fetching
bash scripts/docker/docker-plex.sh # Plex Docker container setup
```

## Conventions

- ESM module type for JS config (`"type": "module"`)
- Scripts organized in `scripts/`, Docker scripts in `scripts/docker/`
- Plex media lives in `plex/media/`
- Docs in `docs/` (linux-install.md, argon-one.md)
- No test suite — scripts validated on target hardware
- Conventional commits: `feat:`, `fix:`, `chore:`, etc.
