# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Prerequisites

### 1. Install chezmoi

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## Setup

Initialize and apply the dotfiles (you will be prompted to choose a profile: `personal` or `work`):

```sh
chezmoi init --apply git@github.com:davidwshg/dotfiles.git
```

This will:
- Clone this repo to `~/.local/share/chezmoi`
- Prompt for your profile (`personal` or `work`)
- Auto-install Homebrew if not already present
- Apply all dotfiles to your home directory
- Install all Homebrew packages and casks via `~/.Brewfile`

After setup, activate the git commit hook for this repo:

```sh
git -C $(chezmoi source-path) config core.hooksPath .githooks
```

## Updating

```sh
chezmoi update
```

Pulls the latest changes and re-applies.
