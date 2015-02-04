# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Configure prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [[ -f /etc/bash_completion ]] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Bash-completion for Mac OS X
BASH_COMPLETE_DIR='/usr/local/etc/bash_completion.d'
if [[ -d $BASH_COMPLETE_DIR ]]; then
    for file in $BASH_COMPLETE_DIR/* ; do
        source "$file"
    done
fi

# enable 256-color support in terminal
# TERM=xterm-256color

# enable color support a few common commands
alias ls='ls -G'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

# Environment
# -----------

export EDITOR='vim'

# Aliases
# -------
alias ll='ls -lahF'
alias la='ls -A'
alias l='ls -CF'

alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gb="git branch"
alias gl="git log"

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
