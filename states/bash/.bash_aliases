# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gb="git branch"
alias gl="git log"
alias git-delete-merged-branches="git checkout master && git pull origin master && git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"

# Vagrant
alias vup="vagrant up"
alias vdown="vagrant halt"
alias vssh="vagrant ssh"
alias vhtop="vagrant ssh --command htop"
