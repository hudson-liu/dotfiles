# Interactive Checker
[[ $- != *i* ]] && return

# ------[Aliases]------
alias ls='eza -l' # Better version of ls
alias grep='grep --color=auto' # Prettier grep
alias adam='setxkbmap -option caps:swapescape' # For normal keyboard use
alias ramiel='setxkbmap -option' # For split ergomech usage
alias venvs='source ~/Documents/Environments/env_runner.sh' # Venv selector for Python

# ------[Prompt]------
PS1='\[\e[1m\]hudson\[\e[0m\]-\[\e[1;94m\]\h\[\e[0m\] \[\e[1;32m\][\W]\[\e[0m\]: '

# ------[Show Fetch]-----
catnap
