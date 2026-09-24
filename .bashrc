#
# ~/.bashrc
#

# If not running interactively, don't do anything

export EDITOR="code"

alias update-rice='sudo sh .rice/update.sh'
alias setup-rice='sudo sh .rice/setup.sh'

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '