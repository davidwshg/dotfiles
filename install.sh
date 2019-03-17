cd

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt update -y && apt upgrade -y
apt install -y \
    zsh \
    git \
    software-properties-common \
    apt-transport-https \
    docker.io \
    gdebi \
    snapd \
    --no-install-recommends yarn

snap install vscode --classic
snap install slack --classic
snap install \
    spotify \
    postman \
    chromium \
    altair

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)"

git clone https://github.com/DavidWashington833/dotfiles.git ~/.dotfiles
git config --global user.name "David Washington"
git config --global user.email "davidwashington833@gmail.com"

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

groupadd docker && usermod -aG docker $USER
chsh -s /bin/zsh
source ~/.zshrc

nvm install --lts
