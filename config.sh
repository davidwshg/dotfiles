cd

git clone https://github.com/davidwfs/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
mv ~/.zprofile ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/
cp ~/.dotfiles/.zprofile ~/
