cd

# install dependencies
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list

apt update -y && apt upgrade -y
apt install -y \
    zsh \
    curl \
    git \
    software-properties-common \
    apt-transport-https \
    docker.io \
    code \
    spotify-client \
    gdebi \
    --no-install-recommends yarn

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

groupadd docker && usermod -aG docker $USER

curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

curl -O https://hyper-updates.now.sh/download/linux_deb
gdebi linux_deb

# clone dotfiles
git clone https://github.com/DavidWashington833/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

source ~/.zshrc

curl -O "https://raw.githubusercontent.com/rupa/z/master/z.sh" && mv z.sh ~/.dotfiles/z.sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

nvm install --lts
