#!/usr/bin/env bash

set -e

## Rosetta 2
# Install Rosetta 2 to ensure compatibility with 'foxitreader' on Apple Silicon Macs
softwareupdate --install-rosetta --agree-to-license

## Homebrew
# Need sudo access on macOS
# https://github.com/Homebrew/install/blob/fc8acb0828f89f8aa83162000db1b49de71fa5d8/install.sh#L228
# This will prompt you for the password once, and then subsequent sudo commands will not require a password as long as the authentication is cached.
sudo -v
# https://unix.stackexchange.com/questions/261103/how-do-i-maintain-sudo-in-a-bash-script#:~:text=To%20%22keep%20it,null%20%7C%7C%20exit%0Adone%20%26
# https://www.sudo.ws/docs/man/1.8.24/sudo.man/#:~:text=this%20limit%20is%20policy-specific%3B%20the%20default%20password%20prompt%20timeout%20for%20the%20sudoers%20security%20policy%20is%205%20minutes.
while true; do
  sleep 60
  sudo -n true
  kill -0 "$$" 2>/dev/null || exit
done &
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

## .tmux
# https://github.com/gpakosz/.tmux#:~:text=~%2F.config%2Ftmux-,Installing%20in%20~%3A,f%20.tmux%2F.tmux.conf,-%24%20cp%20.tmux%2F.tmux
cd
# Check if the .tmux directory exists and remove it if it does
if [ -d "$HOME/.tmux" ]; then
  rm -rf "$HOME/.tmux"
fi
git clone https://github.com/gpakosz/.tmux.git
ln -s -f "$HOME/.tmux/.tmux.conf" "$HOME/.tmux.conf"

## broot
# https://github.com/Canop/broot/blob/33c2b636fa170611c7c5698ee9e2219dd2cfd89a/website/docs/install-br.md?plain=1#L21-L23
broot --install

## extension
# Change directory to cloned repo
cd "$chezmoi_directory"
./extension.sh

## Oh My Zsh
# Check if the .oh-my-zsh directory exists and remove it if it does
if [ -d "$HOME/.oh-my-zsh" ]; then
  rm -rf "$HOME/.oh-my-zsh"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# skhd
# https://github.com/koekeishiya/homebrew-formulae/blob/fcbe03cedeb3f533b9d8d1a0c25177002c4a8e9e/skhd.rb#L19-L20
skhd --start-service

## vimrc
# Check if the .vim_runtime directory exists and remove it if it does
if [ -d "$HOME/.vim_runtime" ]; then
  rm -rf "$HOME/.vim_runtime"
fi

# https://github.com/amix/vimrc/blob/8bf90b12d004e5bf9be3bd69139fabef3d4361ac/README.md?plain=1#L19-L20
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# yabai
# https://github.com/koekeishiya/homebrew-formulae/blob/73dfc99a762d9adcf89611535f5a72f7f724fae5/yabai.rb#L28-L29
yabai --start-service

## chezmoi
chezmoi apply --force

## devenv
# https://devenv.sh/getting-started/#installation
# Check if cachix is already installed
if ! command -v cachix &> /dev/null; then
  nix profile install nixpkgs#cachix
fi

# https://github.com/cachix/cachix/blob/049b2a688783766ea16895bd25e9f35ca914fd60/cachix/src/Cachix/Client/InstallationMode.hs#L106-L109
echo "trusted-users = root $USER" | sudo tee -a /etc/nix/nix.conf && sudo pkill nix-daemon
cachix use devenv
nix profile install --accept-flake-config nixpkgs#devenv

## preferences
"$chezmoi_directory/preferences.sh"
