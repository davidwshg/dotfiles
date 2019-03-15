cd

# install dependencies
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt update -y && apt upgrade -y
apt install -y \
    zsh \
    curl \
    git \
    software-properties-common \
    apt-transport-https \
    docker.io \
    gdebi \
    snapd \
    --no-install-recommends yarn

snap install \
	vscode --classic \
	slack --classic \
	spotify

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

groupadd docker && usermod -aG docker $USER

curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

curl -O https://hyper-updates.now.sh/download/linux_deb
gdebi linux_deb
rm linux_deb

chsh -s /bin/zsh

# clone dotfiles
git config --global user.name "David Washington"
git config --global user.email "davidwashington833@gmail.com"
git clone https://github.com/DavidWashington833/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

source ~/.zshrc

curl -O "https://raw.githubusercontent.com/rupa/z/master/z.sh" && mv z.sh ~/.dotfiles/z.sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

nvm install --lts
