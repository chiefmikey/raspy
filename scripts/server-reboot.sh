#!/bin/sh

HOME="/home/raspy"
SCRIPTS="${HOME}/scripts"

set -x
"${SCRIPTS}"/server-system.sh
reboot
