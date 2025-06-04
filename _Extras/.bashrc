#!/bin/bash
# Interactive Checker
[[ $- != *i* ]] && return

# ------[Aliases]------
alias ls='eza -l' # Better version of ls
alias grep='grep --color=auto' # Prettier grep
alias adam='setxkbmap -option caps:swapescape' # For normal keyboard use
alias ramiel='setxkbmap -option' # For split ergomech usage
alias venvs='source ~/Documents/Environments/env_runner.sh' # Venv selector for Python
alias notifs='dunstctl set-paused toggle && echo "Paused:" && dunstctl is-paused' # Toggle Notifications
alias zpdfc="bash ~/.config/zathura/zathura-toggle-theme.sh" # Toggle color theme for Zathura

# ------[Functions (Jobs)]------
# Run Job 
rj() {
    src="$1"
    bin="${src%.cpp}"
    clang++ -Wall -std=c++11 "$src" -o "$bin.out" && ./"$bin.out"
}

# ------[Prompt]------
PS1='\[\e[1m\]hudson\[\e[0m\]-\[\e[1;94m\]\h\[\e[0m\] \[\e[1;32m\][\W]\[\e[0m\]: '

# ------[Change GOPATH]------
export GOPATH=$HOME/.go_workspace

# ------[Show Fetch]-----
catnap

