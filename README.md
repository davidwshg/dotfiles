# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Prerequisites

### 1. Install chezmoi

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## Setup

Initialize and apply the dotfiles:

```sh
chezmoi init --apply git@github.com:davidwshg/dotfiles.git
```

You will be prompted for:

| Prompt | Example |
|---|---|
| Profile | `personal` or `work` |
| Git user name | `Jane Smith` |
| Git email | `jane@example.com` |
| SSH key comment | `jane@example.com` or `macbook-pro` |

This will:
- Clone this repo to `~/.local/share/chezmoi`
- Auto-install Homebrew if not present
- Auto-install nvm if not present
- Auto-install oh-my-zsh if not present
- Generate an ed25519 SSH key at `~/.ssh/id_ed25519` if one doesn't exist (prints the public key and a link to add it to GitHub)
- Apply dotfiles to `~`
- Install all Homebrew packages and casks via `~/.Brewfile`
- Install Python 3.10.10 via pyenv and set as global

After setup, activate the git commit hook for this repo:

```sh
git -C $(chezmoi source-path) config core.hooksPath .githooks
```

## Managed files

| File | Source |
|---|---|
| `~/.zshrc` | `dot_zshrc.tmpl` |
| `~/.gitconfig` | `dot_gitconfig.tmpl` |
| `~/.Brewfile` | `dot_Brewfile.tmpl` |

## Updating

```sh
chezmoi update
```

Pulls the latest changes and re-applies.
