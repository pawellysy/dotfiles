HOST_NAME=pueblo
source ~/.nvm/nvm.sh
nvm use 16
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin
export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("🐁")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"
if [ -f ~/.git-auto-complete.bash ]; then
	. ~/.git-auto-complete.bash
fi
function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias hcd='code ~/dev/blacklabel/highcharts-development/highcharts-workspace.code-workspace'
alias utils='cd ~/dev/blacklabel/utils && npm start'
alias a='code .'
alias c='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias scr="gulp scripts-watch"
alias o="open ." # Open the current directory in Finder

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gsh="git stash"
alias gsha="git stash apply"
alias gsha1="git stash apply stash@{1}"
alias gsha2="git stash apply stash@{2}"
alias gsha3="git stash apply stash@{3}"
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gpo='git pull origin master'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias copy='git branch --show-current | pbcopy'
alias gac='git add . && git commit'
alias gch='git checkout'
alias gprev='git checkout @~1'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----------
# LOAD git completion
# ----------
source ~/.git-completion.bash
source ~/.bashrc
