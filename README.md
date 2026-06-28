# raspy

Server setup scripts and configuration for a Raspberry Pi running Ubuntu with Docker and Plex.

## Contents

- `scripts/` - Shell scripts for server provisioning, system updates, and Git authentication
- `plex/` - Docker run command for Plex Media Server
- `docs/` - Setup notes for a fresh Linux install and the Argon One V2 Pi 4 case

## Scripts

| Script | Description |
|---|---|
| `user-data.sh` | Initial provisioning: installs dependencies (git, jq, awscli, docker), clones this repo, sets permissions |
| `server-auth.sh` | Authenticates Git using a credential fetched from AWS Secrets Manager |
| `server-fetch.sh` | Pulls latest changes from the main branch and resets to origin |
| `server-system.sh` | Runs a full apt update/upgrade cycle and release upgrade |
| `server-reboot.sh` | Runs system updates then reboots |

## Plex

The `plex/` directory contains a Docker run command for `spritsail/plex-media-server`. Pass a Plex claim token as the first argument:

```sh
bash plex/media/docker-plex.sh <claim-token>
```

Mounts `/config/plex`, `/transcode`, and `/media` from the host.

## Requirements

- Ubuntu (ARM or x86)
- AWS credentials with access to the `auth-raspy` secret in Secrets Manager (us-east-2)
- Docker
