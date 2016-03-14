if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
fi

# Shortcuts
alias drush='docker run -v `pwd`:/app --link sa.mariadb --rm sikkerarvdk/drush'

alias ..="cd .."
alias ...="cd ../.."
alias l="ls -lha"
alias w="cd ~/www"

export PS1="\w/ "
