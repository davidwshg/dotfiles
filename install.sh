cd

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update && brew upgrade

brew tap adoptopenjdk/openjdk

brew install --cask \
    visual-studio-code \
    datagrip \
    docker \
    spotify \
    postman \
    google-chrome \
    slack \
    iterm2 \
    evernote \
    notion \
    lens \
    ngrok \
    discord \
    homebrew/cask-fonts/font-fira-code \
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
    gcc \
    kubectl \
    helm \
    terraform \
    fluxcd/tap/flux \
    gnupg \
    sops \
    redis \
    skaffold \
    minikube \
    lua \
    golang \
    luarocks \
    watch

brew link --force libpq

pyenv install 3.7.8
pyenv global 3.7.8

eval "$(pyenv init --path)"

pip install \
    pygments \
    chroma \
    virtualenv

python -m pip install --upgrade pip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
