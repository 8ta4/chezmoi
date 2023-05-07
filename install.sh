#!/usr/bin/env bash

set -e

## Homebrew
# Need sudo access on macOS
# https://github.com/Homebrew/install/blob/fc8acb0828f89f8aa83162000db1b49de71fa5d8/install.sh#L228
# This will prompt you for the password once, and then subsequent sudo commands will not require a password as long as the authentication is cached.
sudo true

# Install brew non-interactively using NONINTERACTIVE environment variable
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

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

## Oh My Zsh
# Check if the .oh-my-zsh directory exists and remove it if it does
if [ -d "$HOME/.oh-my-zsh" ]; then
  rm -rf "$HOME/.oh-my-zsh"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

## .tmux
cd

# Check if the .tmux directory exists and remove it if it does
if [ -d "$HOME/.tmux" ]; then
  rm -rf "$HOME/.tmux"
fi
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

## Neovim
# https://github.com/neovim/neovim/blob/d48cd9a0aa9dc2c79a218174708c7c7278a6e6f3/runtime/doc/provider.txt#L37C14-L40
python3 -m pip install --user --upgrade pynvim

## vimrc
# https://github.com/amix/vimrc/blob/8bf90b12d004e5bf9be3bd69139fabef3d4361ac/README.md?plain=1#L19-L20
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

## Visual Studio Code
./code.sh

## chezmoi
chezmoi apply --force

