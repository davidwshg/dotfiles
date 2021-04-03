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
  emoji
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
)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:node_modules/.bin/
