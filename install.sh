apt update -y
apt install git zsh docker.io -y

cd; git clone https://github.com/DavidWashington833/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup

mv ~/.zsh ~/.dotbackup/
mv ~/.bashrc ~/.dotbackup/
mv ~/.bash_profile ~/.dotbackup/

cp ~/.dotfiles/.zsh ~/1
cp ~/.dotfiles/.bashrc ~/
cp ~/.dotfiles/.bash_profile ~/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -O "https://raw.githubusercontent.com/rupa/z/master/z.sh" && mv z.sh ~/.dotfiles/z.sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

nvm install --lts

groupadd docker && usermod -aG docker $USER