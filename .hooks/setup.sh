#!/bin/bash

set -eu

type brew >/dev/null 2>&1 && \
type age >/dev/null 2>&1 && \
type keepassxc-cli >/dev/null 2>&1 && \
exit

case "$(uname -s)" in
Darwin)
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew bundle --file=/dev/stdin <<EOF
brew "age"
brew "chezmoi"
cask "keepassxc"
EOF
  ;;
Linux)
  sudo apt install --assume-yes build-essential curl file git keepassxc-full procps
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  brew bundle --file=/dev/stdin <<EOF
brew "age"
brew "chezmoi"
EOF
  ;;
*)
  exit 1
  ;;
esac
