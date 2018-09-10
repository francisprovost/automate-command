# Path to your oh-my-zsh installation.
export ZSH=/Users/fprovost/.oh-my-zsh

# Theme config
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
plugins=(git cloudapp kubectl z docker npm vscode)
eval $(thefuck --alias)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
## Terminal configs
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias new-tab="open . -a iterm"
alias clr="clear"

## Terminal override
alias cat="bat"
alias l="exa -l -a"
function lt(){ exa -l -a -T -L=$1 }
alias lt2="lt 2"
alias lt3="lt 3"

## Git aliases
alias gffs="git flow feature start"
alias gfrs="git flow release start"
alias gfrf="git flow release finish"
alias gpfl="git push --force-with-lease"
### Git commitizen aliases
alias gcz="git cz"
alias gcza="git cz -a"

## NPM && JSPM
alias npmplz="npm cache clean && rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias jspmplz="rm -rf jspm_modules/ && jspm install"
alias ni='npm install'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias ns='npm start'
alias nlg='npm list --global --depth=0'

## Docker
alias dps='docker ps'
alias dclean='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
function dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

## AWS
function connect_dev() { ssh aws-dev -t 'connect '$1 }
function connect_prod() { ssh aws-prod -t 'connect '$1 }
alias connect.dev=connect_dev
alias connect.prod=connect_prod

## Apps Shortcuts
alias c="code"
alias chrome-debug="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --profile-directory=debug"

# Set Spaceship ZSH as a prompt
source "/Users/fprovost/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
autoload -U promptinit; promptinit
prompt spaceship

# ZSH Theme override
SPACESHIP_GIT_BRANCH_COLOR=yellow

# ¯\_(ツ)_/¯
DEFAULT_USER=
PATH="/Users/fprovost/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/fprovost/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/fprovost/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/fprovost/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/fprovost/perl5"; export PERL_MM_OPT;

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


