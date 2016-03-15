if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
fi

# Shortcuts
alias drush='docker run -v `pwd`:/app --rm drush/drush:8'

alias ..="cd .."
alias ...="cd ../.."
alias l="ls -lha"
alias w="cd ~/www"

export PS1="\w/ "
