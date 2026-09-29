# Bienvenue Chez Moi

## macOS

```shell
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install age chezmoi keepassxc
chezmoi init --ssh --apply OzymandiasTheGreat
```

## Linux

```shell
sudo apt install --assume-yes build-essential curl file git keepassxc-full procps
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install age chezmoi
chezmoi init --ssh --apply OzymandiasTheGreat
```

## Windows

```powershell
winget install --id=FiloSottile.age -e --silent
winget install --id=twpayne.chezmoi -e --silent
winget install --id=KeePassXCTeam.KeePassXC -e --silent
chezmoi init --ssh --apply OzymandiasTheGreat
```
