export PATH=/usr/local/Cellar/python/2.7.9/bin:$PATH:~/bin
export PATH=$PATH:/usr/local/bin/
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export TERM=xterm-256color

export NVM_DIR="$HOME/.nvm"
alias nvm="unalias nvm && source /usr/local/opt/nvm/nvm.sh && nvm"
export PATH="$HOME/.nvm/versions/node/v6.2.0/bin:$PATH"

alias s=subl
alias g=git
alias e="emacsclient -nw --alternate-editor="" -c "$@""
alias y=yarn

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-prompt.sh
export PROMPT_COMMAND='__git_ps1 "\[\033[0;31m\]\u\[\033[0m\]@\[\033[0;34m\]\h\[\033[0;36m\] \w\[\033[0m\]" "\n\[\033[32m\]»\[\033[0m\] "'
export HISTFILESIZE=10000
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWUNTRACKEDFILES=1
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias grep='grep --color=auto'
alias ls='ls -G'
alias ll='ls -la'
alias gbc="git branch 2> /dev/null | grep -e ^* | awk '{ print \$2 }' | pbcopy"
alias be='bundle exec'
alias rm=trash
alias t='trans :es'
alias reload='source ~/.bash_profile'

dotenv() {
    eval "$(cat .env | sed 's/^/export /g' | sed 's/=/=\"/g' | sed 's/$/"/g')"
}

clear_docker_machine() {
    unset DOCKER_TLS_VERIFY;
    unset DOCKER_HOST;
    unset DOCKER_CERT_PATH;
    unset DOCKER_MACHINE_NAME;
}

# Load specific bash profile for the project I'm current working on
if [ -f ~/.current_project_bash ]; then
  source ~/.current_project_bash
fi
