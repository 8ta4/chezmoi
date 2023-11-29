#!/bin/bash

function install_extensions() {
  editor=$1
  extensions=(
    "GitHub.vscode-github-actions"
    "asvetliakov.vscode-neovim"
    "betterthantomorrow.calva"
    "castwide.solargraph"
    "esbenp.prettier-vscode"
    "haskell.haskell"
    "nwolverson.ide-purescript"
    "redhat.vscode-xml"
    "redhat.vscode-yaml"
    "streetsidesoftware.code-spell-checker"
  )
  for extension in "${extensions[@]}"; do
    "$editor" --force --install-extension "$extension"
  done
}

install_extensions "code"
install_extensions "code-insiders"
