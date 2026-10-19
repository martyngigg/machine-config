# Personal System Configuration

Dotfiles and machine setup for macOS and Linux, managed with [chezmoi](https://www.chezmoi.io).

## Prerequisites

- brew: Install from https://brew.sh/
- curl
- git
- sudo access

## Installation

Install `chezmoi`

```bash
>brew install chezmoi
```

Apply chezmoi to manage configuration:

```bash
>chezmoi init --apply https://github.com/martyngigg/machine-config.git
```

## Layout

- `.chezmoiscripts/` - setup scripts run by `chezmoi apply`.
- `.chezmoidata/` - shared content, e.g. packages to install.
- `images/` - wallpapers. Not installed.
