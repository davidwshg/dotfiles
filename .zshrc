export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true

plugins=(
  alias-finder
  catimg
  chucknorris
  colorize
  common-aliases
  compleat
  cp
  debian
  dirhistory
  docker
  docker-compose
  extract
  fzf
  git
  git-extras
  npm
  nvm
  pip
  pyenv
  virtualenv
  vscode
  web-search
  yarn
  yarn
  z
  kubectl
  terraform
)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:node_modules/.bin/
PATH=$PATH:/opt/homebrew/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
