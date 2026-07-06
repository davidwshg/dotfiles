# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

This is a [chezmoi](https://www.chezmoi.io/) dotfiles repository. chezmoi manages dotfiles by tracking them here under name-transformed filenames (e.g. `dot_zshrc` → `~/.zshrc`) and applying them to the home directory.

## chezmoi file naming conventions

| Prefix/suffix | Meaning |
|---|---|
| `dot_` | becomes a leading `.` (e.g. `dot_zshrc` → `.zshrc`) |
| `private_` | file is chmod 600 on apply |
| `executable_` | file is chmod +x on apply |
| `symlink_` | creates a symlink rather than a file |
| `.tmpl` suffix | file is a Go template processed by chezmoi |
| `run_once_` | script that runs once per machine (keyed by script hash) |
| `run_once_before_` | same as above, but runs before dotfiles are applied |
| `run_onchange_` | script that re-runs whenever its content changes |

## Common commands

```sh
# Preview what chezmoi would change in ~
chezmoi diff

# Apply all managed dotfiles to ~
chezmoi apply

# Add a new dotfile to be managed
chezmoi add ~/.somerc

# Edit a managed file (opens in $EDITOR, then auto-applies)
chezmoi edit ~/.zshrc

# Pull latest from this repo and apply
chezmoi update

# Show managed files
chezmoi managed
```

## Git conventions

All commits and PR titles must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

```
<type>[optional scope][optional !]: <description>
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.

Do not add `Co-Authored-By:` trailers to commits.

### Enforcing the hook

This repo uses `.githooks/commit-msg` to validate messages. Activate it once after cloning:

```sh
git config core.hooksPath .githooks
```

## Multi-profile setup

This repo supports two profiles selected at init time:

| Profile | Use case |
|---|---|
| `personal` | Personal machine — SE + general/gaming use |
| `work` | Company machine — SE + work-specific tooling |

The active profile is stored in each machine's local `~/.config/chezmoi/chezmoi.toml` (not tracked in this repo). Template files (`.tmpl`) use `{{ if eq .profile "work" }}...{{ end }}` blocks to conditionally include profile-specific content.

### New machine setup

```sh
chezmoi init git@github.com:davidwshg/dotfiles.git
# → prompted for: profile (personal/work), git name, git email, SSH key comment
chezmoi apply
git -C $(chezmoi source-path) config core.hooksPath .githooks
```

### Useful commands

```sh
# Check active profile
chezmoi data | grep profile

# Preview rendered output before applying
chezmoi execute-template < $(chezmoi source-path)/dot_zshrc.tmpl

# Re-run init prompts (e.g. to change profile)
chezmoi init --reconfigure
```

### Package management

Homebrew packages are in `dot_Brewfile.tmpl` (shared across all profiles). Add a package there and run `chezmoi apply` — the install script runs automatically when the Brewfile changes.

### Adding profile-specific config

Edit `dot_zshrc.tmpl` (or any other `.tmpl` file) and add content inside the relevant block:

```zsh
{{ if eq .profile "work" }}
# your work-only config here
{{ end -}}
{{ if eq .profile "personal" }}
# your personal-only config here
{{ end -}}
```

## Current managed files

### Dotfiles

| Source | Target | Notes |
|---|---|---|
| `dot_zshrc.tmpl` | `~/.zshrc` | oh-my-zsh (robbyrussell), shared plugins + profile-specific sections |
| `dot_gitconfig.tmpl` | `~/.gitconfig` | name/email from init prompts; VS Code as editor |
| `dot_Brewfile.tmpl` | `~/.Brewfile` | shared across all profiles |

### Scripts

| File | Trigger | What it does |
|---|---|---|
| `run_once_before_install-homebrew.sh.tmpl` | once | Installs Homebrew (macOS only, skips if already present) |
| `run_once_before_install-nvm.sh.tmpl` | once | Installs nvm (macOS only, skips if already present) |
| `run_once_before_install-ohmyzsh.sh.tmpl` | once | Installs oh-my-zsh (macOS only, skips if already present) |
| `run_once_generate-ssh-key.sh.tmpl` | once | Generates ed25519 SSH key; prints public key to add to GitHub |
| `run_onchange_install-packages-darwin.sh.tmpl` | on Brewfile change | Runs `brew bundle install --global` |
| `run_onchange_setup-pyenv.sh.tmpl` | on script change | Installs Python 3.10.10 via pyenv and sets as global |
