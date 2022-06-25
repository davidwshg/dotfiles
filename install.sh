cd

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update && brew upgrade

brew tap adoptopenjdk/openjdk

brew install --cask \
    google-chrome \
    slack \
    notion \
    spotify \
    visual-studio-code \
    iterm2 \
    datagrip \
    postman \
    docker \
    ngrok \
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
    kafka \
    redis \
    watch \
    lua \
    luarocks \
    terraform \
    golang \
    minikube \
    kubectl \
    helm \
    skaffold \
    fluxcd/tap/flux \
    gnupg \
    sops \
    protobuf \
    mongosh \
    mvn

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
