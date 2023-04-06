# directories
export HOME="/home/raspy"
export SCRIPTS="${HOME}/scripts"

# server
alias upgrade="sudo ${SCRIPTS}/server-system.sh"
alias rboot="sudo ${SCRIPTS}/server-reboot.sh"
alias sdown="sudo shutdown -h now"

# system
alias mem="free -h"
alias smem="htop"
alias motd="sudo run-parts /etc/update-motd.d"

alias list-alias="cat ${HOME}/.bash_aliases"