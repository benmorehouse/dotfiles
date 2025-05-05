# Welcome to my zshrc fuckers
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation
ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/benjamin/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

# use latest version of grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="${PATH}:${HOME}/.krew/bin"
# this is for arduino idea path
export PATH=/usr/local/bin:/usr/local/avr/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:/opt/homebrew/bin
export GOPATH="$HOME/go"
export GOSUMDB="sum.golang.org"
export GOPROXY="https://proxy.golang.org,direct"
export GO111MODULE=""
export CGO_ENABLED=0
export EDITOR=/usr/local/Cellar/vim/9.1.0600/bin/vim
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export XDG_CONFIG_HOME=/Users/benjamin/
export CR_PAT=""
export NVM_DIR="$HOME/.nvm"
export KUBECONFIG=~/.kube/config
export PORT=""
export LDFLAGS="-L/usr/local/opt/node@18/lib"
export CPPFLAGS="-I/usr/local/opt/node@18/include"

# Android 
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME="/usr/bin/java"
# export PATH=$JAVA_HOME:$PATH
# export PATH="$HOME/.jenv/bin:$PATH"
# export JAVA_HOME="/usr/bin/java"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/usr/local/opt/node@18/bin:$PATH"


PATH="$GOPATH/bin$PATH"
export GH_USERNAME=benmorehouse

ZSH_THEME="robbyrussell"

export AWS_REGION="us-west-2"
export HCP_CLIENT_ID=""
export HCP_CLIENT_SECRET=""
export VAULT_ADDR=""
export VAULT_NAMESPACE="admin"
export LOCAL_DEPLOY=1
export REGION="us-west-2"
export VERCEL_TOKEN=""

export GIT_USER=benmorehouse

export GITHUB_TOKEN=

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git aws kubectl)
# plugins=(git helm aws docker docker-compose flutter golang kubectl pip python zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias k=kubectl
alias awsdev='ln -sf ~/.kube/aws-dev.yaml ~/.kube/config'
alias dodev='ln -sf ~/.kube/do-config.yaml ~/.kube/config'
alias kk=k9s
alias argocd='argocd --server=localhost:8080'

# target python installed version of vim from homebrew
alias vim='/usr/local/Cellar/vim/9.1.0600/bin/vim'
alias vi='/usr/local/Cellar/vim/9.1.0600/bin/vim'
alias vin='/usr/local/Cellar/vim/9.1.0600/bin/vim'
alias python3='/usr/local/bin/python3'
alias python='/usr/local/bin/python3'
alias dc='docker-compose'
alias gda='git diff -a'
alias edit_snippets='vim ~/.vim/plugged/vim-snippets/snippets/go.snippets'
alias kk='k9s'
alias yew='cd ~/repositories/yew/'
alias travel="cd ~/repositories/benmorehouse/traveler"
alias allara="cd ~/repositories/benmorehouse/allara"

alias install_kustomize="cd ~/repositories/perch/kustomize/kustomize && go install ."
alias .='cd ../'
alias rtc='cd ~/repositories/rtc; clear; ./rtc; cd; '
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias config='/usr/bin/git --git-dir=/Users/benjamin/.cfg/ --work-tree=/Users/benjamin'
alias prc="cd ~/repositories/bumpin"
alias api="cd ~/repositories/bumpin/bumpin-api/src"
alias web="cd ~/repositories/bumpin/bumpkin-web"
alias ben="cd ~/repositories/benmorehouse"
alias k="kubectl"
alias gc!="git commit --amend --signoff"
alias gc="git commit --signoff"
alias fly="fly -t ci"
alias gitlog='git log --oneline'

alias usc='cd ~/repositories/school-notes'
alias gt='go test'
alias tp='terraform plan'
alias tf='terraform'
alias fd='cd ~/repositories/benmorehouse-finale-desserts/'

grp() {
	grep -r "$1" *
}

export NVM_DIR="$HOME/.nvm"

init_nvm() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
}

listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color :$1
    else
        echo "Usage: listening [pattern]"
    fi
}

alias find_port=listening
alias kill_pid=kill -9

# bun completions
# [ -s "/Users/benjamin/.bun/_bun" ] && source "/Users/benjamin/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
