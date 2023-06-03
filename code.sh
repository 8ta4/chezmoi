function install_extensions() {
  editor=$1
  extensions=(
    "asvetliakov.vscode-neovim"
    "esbenp.prettier-vscode"
    "GitHub.vscode-github-actions"
    "haskell.haskell"
    "redhat.vscode-yaml"
    "betterthantomorrow.calva"
  )
  for extension in "${extensions[@]}"; do
    $editor --force --install-extension $extension
  done
}

install_extensions "code"
install_extensions "code-insiders"