# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -A  --color=auto'
alias xi='xbps-install'
alias r='ranger'
alias nm='neomutt'

# git-related aliases
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias ga='git add'

PS1='\[\e[92m\][\[\e[1m\]\u@\h\[\e[0m\] \[\e[92;1m\]\w\[\e[92m\]]\[\e[1m\]:\[\e[0m\] '
