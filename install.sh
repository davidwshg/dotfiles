apt update -y
apt install git zsh -y

cd; git clone https://github.com/DavidWashington833/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.bash_profile ~/.dotbackup/.bash_profile
mv ~/.bashrc ~/.dotbackup/.bashrc_backup
cp ~/.dotfiles/.bash_profile ~/.bash_profile
cp ~/.dotfiles/.bashrc ~/.bashrc_backup

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -O "https://raw.githubusercontent.com/rupa/z/master/z.sh" && mv z.sh ~/.dotfiles/z.sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
