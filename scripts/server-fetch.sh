#!/bin/sh

set -x
git fetch --prune
git checkout main
git reset --hard origin/main
