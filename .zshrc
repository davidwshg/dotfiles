export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  cp
  colorize
  compleat
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

export NVM_DIR=~/.nvm

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

PATH=$PATH:node_modules/.bin/
PATH=$PATH:~/.yarn/bin

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
