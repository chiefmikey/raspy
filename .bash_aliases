# server
alias upgrade="sudo ${SCRIPTS}/server-system.sh"
alias rboot="sudo ${SCRIPTS}/server-reboot.sh"
alias sdown="sudo shutdown -h now"

# system
alias mem="free -h"
alias smem="htop"
alias motd="sudo run-parts /etc/update-motd.d"

# commands
alias x-scripts="chmod -R +x ${SCRIPTS}"

# docker
alias plex="${SCRIPTS}/docker-plex.sh ${1}"

alias list-alias="cat ${HOME}/.bash_aliases"