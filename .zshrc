export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true

plugins=(
  alias-finder
  catimg
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
  kubectl
  npm
  nvm
  pip
  pyenv
  terraform
  virtualenv
  vscode
  web-search
  yarn
  z
)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:node_modules/.bin
PATH=$PATH:/opt/homebrew/bin
