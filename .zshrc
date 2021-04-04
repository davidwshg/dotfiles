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
)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:node_modules/.bin/
PATH="$PYENV_ROOT/bin:$PATH"
PYENV_ROOT="$HOME/.pyenv"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
