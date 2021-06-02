cd

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh)"

brew update && brew upgrade

brew tap adoptopenjdk/openjdk

brew install --cask \
    visual-studio-code \
    docker \
    spotify \
    postman \
    google-chrome \
    slack \
    iterm2 \
    evernote \
    adoptopenjdk8

brew install \
    git \
    yarn \
    libpq \
    leiningen \
    pyenv \
    fzf \
    fortune \
    cowsay \
    ImageMagick \
    htop \
    gcc

brew link --force libpq

git clone https://github.com/davidwfs/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

pyenv install 3.7.8
pyenv global 3.7.8

eval "$(pyenv init --path)"

pip install \
    pygments \
    chroma \
    virtualenv

python -m pip install --upgrade pip

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
