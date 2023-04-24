cd

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'PATH=$PATH:/opt/homebrew/bin' >> ~/.zshrc

source ~/.zshrc

brew update && brew upgrade

brew tap adoptopenjdk/openjdk

brew install --cask \
  1password \
  adoptopenjdk8 \
  datagrip \
  docker \
  dynobase \
  google-chrome \
  homebrew/cask-fonts/font-fira-code \
  iterm2 \
  ngrok \
  postman \
  slack \
  spotify \
  visual-studio-code

brew install \
  fluxcd/tap/flux \
  fzf \
  gcc \
  git \
  gnupg \
  golang \
  helm \
  htop \
  kafka \
  kubectl \
  leiningen \
  libpq \
  lua \
  luarocks \
  minikube \
  mkcert \
  mongosh \
  mvn \
  protobuf \
  pyenv \
  redis \
  skaffold \
  sops \
  terraform \
  watch \
  yarn

brew link --force libpq

pyenv install 3.10.10
pyenv global 3.10.10

eval "$(pyenv init --path)"

pip install \
  virtualenv

python -m pip install --upgrade pip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
