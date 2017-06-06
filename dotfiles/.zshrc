# Path to your oh-my-zsh installation.
export ZSH=/Users/fprovost/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=false
SPACESHIP_DOCKER_SHOW=false

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cloudapp)
# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
eval $(thefuck --alias)
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias run="grunt serve"
alias tk="npm run karma"
alias tm="npm run mocha"
alias gt="grunt test"
alias new-component="~/dev/bash-command/scripts/react/new-react-component.sh"
alias new-test-component="~/dev/bash-command/scripts/react/new-test-component.sh"
alias go-widget="cd ~/dev/suppliers/widget-supplier/supplier/src/main/webapp/widgets"

alias nwatch="npm run watch --name:"
alias tk="npm run karma"
alias tm="npm run mocha"

alias c="code"
alias new-tab="open . -a iterm"
alias clr="clear"

alias gffs="git flow feature start"
alias gfrs="git flow release start"
alias gfrf="git flow release finish"

alias gbundle="gulp bundle"
alias gbuild="gulp build"

function docker_build() { docker build -t $1 . }
function docker_run() { docker run -p 8080:80 $1 }
function docker_exec() { docker exec -it $1 bash }

alias dckr.run=docker_run
alias dckr.exec=docker_exec
alias dckr.ps='docker ps'

function connect_dev() { ssh aws-dev -t 'connect '$1 }
function connect_prod() { ssh aws-prod -t 'connect '$1 }

alias connect.dev=connect_dev
alias connect.prod=connect_prod

DEFAULT_USER=

PATH="/Users/fprovost/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/fprovost/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/fprovost/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/fprovost/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/fprovost/perl5"; export PERL_MM_OPT;

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)"
#   fi
# }


source "/Users/fprovost/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
