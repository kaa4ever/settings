if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
fi

alias ..="cd .."
alias ...="cd ../.."
alias l="ls -lha"
alias w="cd ~/www"

# Docker shortcuts
alias dp="docker ps"
alias dpa="docker ps -a"
alias dcu="docker-compose up"
alias dcs="docker-compose stop"
db() {
  docker exec -ti $1 bash
}

# Git shortcuts
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'

export PS1="\w/ "
