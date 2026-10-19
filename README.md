# Personal System Configuration

Dotfiles and machine setup for macOS and Linux, managed with [chezmoi](https://www.chezmoi.io).

## Prerequisites

- curl
- macOS: Xcode Command Line Tools (`xcode-select --install`), which provide `git`
- Linux: `sudo` access

## Installation

    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply https://github.com/martyngigg/machine-config.git

## Layout

- `home/` - the chezmoi source directory (see [`.chezmoiroot`](.chezmoiroot)). A `dot_` prefix becomes `.` in `$HOME`.
- `home/.chezmoiscripts/` - setup scripts run by `chezmoi apply`.
- `home/.chezmoitemplates/` - shared content, e.g. VS Code settings used on both macOS and Linux.
- `home/.chezmoiexternal.toml` - files downloaded from other repositories.
- `images/` - wallpapers. Not installed.
