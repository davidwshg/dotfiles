for file in ~/.dotfiles/.{exports,oh-my-zsh}; do
  [ -r "$file" ] && source "$file"
done

PATH=$PATH:node_modules/.bin/

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"