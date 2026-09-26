# Bienvenue Chez Moi

## Unix

```shell
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- -b '~' init --ssh --apply OzymandiasTheGreat && rm "~/chezmoi"
```

## Windows

```powershell
iex "&{$(irm 'https://get.chezmoi.io/ps1')} -b '~' init --ssh --apply OzymandiasTheGreat" && rm "~\chezmoi.exe"
```
