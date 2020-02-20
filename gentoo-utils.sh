#!/bin/bash

# convenient aliases
alias ll='ls -l'
alias today='date +%Y-%m-%d'    # output as format '2020-02-20'
alias now='date +%Y%m%d%H%M%S'  # output as format '20200220142020'
alias top='command -v htop && htop || top' # 'htop' instead of 'top' if possible

# protective aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# emerge related
emerge-sync() {
	emerge --sync
}
emerge-upgrade() {
	local A=$([[ $- == *i* ]] && echo "a" || echo "")
	emerge -${A}vuDN --with-bdeps=y --keep-going --verbose-conflicts --changed-deps ${*:-@world}
}
emerge-monitor() {
	tail -f /var/log/emerge*
}
emerge-log() {
	cat /var/log/emerge.log | awk -F: '{OFS=":";$1=strftime("[%Y-%m-%d %H:%M:%S]",$1);print}' | cut -c1-21,23- | less -XS
}
emerge-cleanup() {
	emerge -a --depclean
}
