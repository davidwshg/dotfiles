cd

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo add-apt-repository multiverse
apt update -y && apt upgrade -y
apt install -y \
    zsh \
    git \
    software-properties-common \
    apt-transport-https \
    docker.io \
    gdebi \
    snapd \
    virtualbox \
    --no-install-recommends yarn \
    openjdk-8-jre-headless \
    python3-pip \
    vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

git clone https://github.com/davidwfs/dotfiles.git ~/.dotfiles

groupadd docker && usermod -aG docker $USER
chmod +x /usr/local/bin/docker-compose
chmod +x minikube
mv minikube /usr/local/bin/
chmod +x ~/kubectl 
sudo mv ~/kubectl /usr/local/bin/kubectl 

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

nvm install --lts

pip3 install Pygments

snap install code --classic
snap install slack --classic
snap install android-studio --classic
snap install \
    spotify \
    postman \
    chromium \
    altair
