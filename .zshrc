export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  command-not-found
  common-aliases
  debian
  dirhistory
  extract
  git
  git-extras
  vscode
  web-search
  yarn
  z
)

source $ZSH/oh-my-zsh.sh

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

PATH=$PATH:node_modules/.bin/

for file in ~/.dotfiles/.{exports}; do
  [ -r "$file" ] && source "$file"
done
