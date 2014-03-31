# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias w="cd /home/www/kka"
alias cc="drush cc all"

PS1='[\u@\h:\w]\$ '

test -s ~/.alias && . ~/.alias || true

umask 0002
