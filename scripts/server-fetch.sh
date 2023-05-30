#!/bin/sh

set -x
git fetch --prune
git checkout main
git reset --hard origin/main
rm -R package.json package-lock.json docs README.md
