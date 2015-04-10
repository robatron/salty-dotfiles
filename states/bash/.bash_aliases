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
alias git-delete-merged-branches="git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"
