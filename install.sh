cd

softwareupdate --install-rosetta

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'PATH=$PATH:/opt/homebrew/bin' >> ~/.zshrc

source ~/.zshrc

brew update && brew upgrade

brew tap adoptopenjdk/openjdk
brew tap lencx/chatgpt https://github.com/lencx/ChatGPT.git

brew install --cask \
  1password \
  adoptopenjdk8 \
  datagrip \
  docker \
  google-chrome \
  grammarly \
  homebrew/cask-fonts/font-fira-code \
  iterm2 \
  ngrok \
  nvidia-geforce-now \
  postman \
  slack \
  spotify \
  tradingview \
  visual-studio-code

brew install --cask --no-quarantine \
  chatgpt

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
  perimeter81 \
  protobuf \
  pyenv \
  redis \
  skaffold \
  sops \
  terraform \
  tuple \
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
