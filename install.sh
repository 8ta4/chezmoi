#!/usr/bin/env bash

set -e

## Install Homebrew
# Need sudo access on macOS
# https://github.com/Homebrew/install/blob/fc8acb0828f89f8aa83162000db1b49de71fa5d8/install.sh#L228
# This will prompt you for the password once, and then subsequent sudo commands will not require a password as long as the authentication is cached.
sudo true

# Install brew non-interactively using NONINTERACTIVE environment variable
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

## Run brew bundle
# Define the variable for the chezmoi directory
chezmoi_directory="$HOME/.local/share/chezmoi"

# Remove existing chezmoi directory if it exists
if [ -d "$chezmoi_directory" ]; then
  rm -rf "$chezmoi_directory"
fi

# Clone GitHub repo to the chezmoi directory
git clone https://github.com/8ta4/chezmoi.git "$chezmoi_directory"

# Change directory to cloned repo
cd "$chezmoi_directory"
brew bundle
