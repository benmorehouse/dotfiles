# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation
ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/benmorehouse/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Library/PostgreSQL/15/bin
export PATH="$PATH:/Users/benmorehouse/.yarn/bin"

# use latest version of grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="${PATH}:${HOME}/.krew/bin"
# this is for arduino idea path
export PATH=/usr/local/bin:/usr/local/avr/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export GOPATH="$HOME/go"
export GOSUMDB="sum.golang.org"
export GOPROXY="https://proxy.golang.org,direct"
export GO111MODULE=""
export GONOPROXY="github.com/benmorehouse/*"
export GONOSUMDB="github.com/benmorehouse/*"
export GOPRIVATE="github.com/benmorehouse/*"
export CGO_ENABLED=0
export XDG_CONFIG_HOME=/Users/benmorehouse/
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export DYLD_LIBRARY_PATH="/opt/homebrew/opt/llvm/lib:$DYLD_LIBRARY_PATH"
export VIRTUAL_ENV=/Users/benmorehouse/default_env
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim
export CONDA_DEFAULT_ENV=/Users/benmorehouse/default_env

export DB_MIGRATE_URL="postgresql+psycopg2://user:password@localhost/dbname"

PATH="$GOPATH/bin$PATH"

# Exposing GH_USERNAME per https://tanzu.vmware.com/developer/guides/ci-cd/concourse-gs/
export GH_USERNAME=benmorehouse

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export DEV_AWS_ACCESS_KEY=""
export DEV_AWS_SECRET_ACCESS_KEY=""
export AWS_REGION="us-west-2"
export HCP_CLIENT_ID=""
export HCP_CLIENT_SECRET=""
export VAULT_ADDR=""
export VAULT_NAMESPACE="admin"
export PORT=8080
export LOCAL_DEPLOY=1
export REGION="us-west-2"

export GIT_USER=
export GIT_TOKEN=
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws kubectl)
# plugins=(git helm aws docker docker-compose flutter golang kubectl pip python zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source <(kubectl completion zsh)

source /Users/benmorehouse/default_env/bin/activate

alias k=kubectl

alias python=/opt/homebrew/bin/python3.12
alias kk=k9s
alias argocd='argocd --server='
alias dc='docker-compose'
alias gda='git diff -a'

alias install_kustomize="cd ~/repositories/perch/kustomize/kustomize && go install ."
alias .='cd ../'
alias rtc='cd ~/repositories/rtc; clear; ./rtc; cd; '
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias config='/usr/bin/git --git-dir=/Users/benmorehouse/.cfg/ --work-tree=/Users/benmorehouse'
alias dynamo='cd ~/.aws/dynamodb_local_latest; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb'
alias dcl='aws dynamodb --endpoint-url http://localhost:8000 --output=json --region=eu-west-2'
alias prc="cd ~/repositories/radix"
alias api="cd ~/repositories/radix/arbitrate-api"
alias web="cd ~/repositories/radix/admin-portal"
alias ui="cd ~/repositories/radix/radix-ui"
alias inf="cd ~/repositories/radix/terraform-live"
alias k="kubectl"
alias gc!="git commit --amend --signoff"
alias gc="git commit --signoff"
alias fly="fly -t ci"
alias gitlog='git log --oneline'

alias usc='cd ~/repositories/school-notes'
alias gt='go test'
alias tp='terraform plan'
alias tf='terraform'

grp() {
	grep -r "$1" *
}
