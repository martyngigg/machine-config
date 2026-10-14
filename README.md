# Personal System Configuration

Dotfiles and machine setup for macOS and Ubuntu/Debian, managed with [chezmoi](https://www.chezmoi.io).

## Prerequisites

* curl
* macOS: Xcode Command Line Tools (`xcode-select --install`), which provide `git`
* Linux: `sudo` access

## Installation

    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply https://github.com/martyngigg/configs.git

This clones the repository into `~/.local/share/chezmoi` and then:

1. Installs prerequisites (apt packages on Linux) and [Homebrew](https://brew.sh).
2. Installs everything in the [Brewfile](home/dot_Brewfile) (copied to `~/.Brewfile`).
3. Copies the dotfiles into `$HOME`.
4. Downloads the agent skills into `~/.agents/skills`.
5. Sets fish as the default shell.

## Layout

* `home/` - the chezmoi source directory (see [`.chezmoiroot`](.chezmoiroot)). A `dot_` prefix becomes `.` in `$HOME`.
* `home/.chezmoiscripts/` - setup scripts run by `chezmoi apply`.
* `home/.chezmoitemplates/` - shared content, e.g. VS Code settings used on both macOS and Linux.
* `home/.chezmoiexternal.toml` - files downloaded from other repositories.
* `images/` - wallpapers. Not installed.

## Day-to-day usage

| Task | Command |
| --- | --- |
| Edit a managed file | `chezmoi edit ~/.config/fish/config.fish` |
| Copy changes made in `$HOME` back to the repo | `chezmoi re-add` |
| Preview changes | `chezmoi diff` |
| Apply changes | `chezmoi apply` |
| Pull latest from GitHub and apply | `chezmoi update` |
| Go to the repository | `chezmoi cd` |
