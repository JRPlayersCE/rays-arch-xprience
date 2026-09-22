#
# ~/.bashrc
#

# If not running interactively, don't do anything

export EDITOR="code"

[[ $- != *i* ]] && return

alias update-rice='sudo sh .rice/update.sh'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
