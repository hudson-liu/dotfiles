#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -l' # Better version of ls
alias grep='grep --color=auto' # Prettier grep
alias adam='setxkbmap -option caps:swapescape' # For normal keyboard use
alias ramiel='setxkbmap -option' # For split ergomech usage
alias venvs='source ~/Documents/Environments/env_runner.sh' # Venv selector for Python

PS1='\[\e[1m\]hudson\[\e[0m\]-\[\e[1;94m\]\h\[\e[0m\] \[\e[1;32m\][\W]\[\e[0m\]: '
catnap

