cd

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt update -y && apt upgrade -y
apt install -y \
    zsh \
    git \
    software-properties-common \
    apt-transport-https \
    gdebi \
    snapd \
    --no-install-recommends yarn

snap install code --classic
snap install slack --classic
snap install android-studio --classic
snap install kubectl --classic
snap install \
    spotify \
    postman \
    chromium \
    altair \
    docker

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)"

git clone https://github.com/davidwfs/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

chsh -s /bin/zsh
source ~/.zshrc

nvm install --lts
