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

## Current managed files

- `dot_zshrc` → `~/.zshrc` — zsh config using oh-my-zsh (robbyrussell theme), with plugins for git, docker, kubectl, terraform, fzf, nvm, pyenv, and more.
