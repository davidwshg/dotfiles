cd

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew update && brew upgrade

brew tap adoptopenjdk/openjdk

brew link --force libpq ail

brew install --cask \
    visual-studio-code \
    docker \
    spotify \
    postman \
    google-chrome \
    slack \
    datagrip \
    iterm2 \
    notion \
    github \
    adoptopenjdk8

brew install \
    git \
    yarn \
    libpq \
    leiningen \
    pyenv \
    fzf

git clone https://github.com/davidwfs/dotfiles.git ~/.dotfiles

mkdir ~/.dotbackup
mv ~/.zshrc ~/.dotbackup/
cp ~/.dotfiles/.zshrc ~/

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

pyenv install 3.7.8
pyenv global 3.7.8

pip install \
    pygments \
    chroma \
    virtualenv

python -m pip install --upgrade pip
