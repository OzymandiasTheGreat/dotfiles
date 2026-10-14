# Bienvenue Chez Moi

## macOS

```shell
xcode-select --install
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --force --apply OzymandiasTheGreat
```

## Linux

```shell
sh -c "$(wget -qO- https://get.chezmoi.io)" -- init --force --apply OzymandiasTheGreat
```

## Windows

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# iex "&{$(irm 'https://get.activated.win')} /HWID"
iex "&{$(irm 'https://get.chezmoi.io/ps1')} init --apply OzymandiasTheGreat"
Restart-Computer -Force
```
