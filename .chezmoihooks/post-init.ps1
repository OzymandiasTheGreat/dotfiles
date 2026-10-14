$target = "$HOME\bin\chezmoi.exe"

if (-not (Test-Path $target)) { exit 0 }

$env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')

if (Get-Command chezmoi -All -ErrorAction SilentlyContinue | Where-Object Source -ne $target) {
  # remove target at the next logon
  [Microsoft.Win32.Registry]::SetValue('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce', 'RemoveBootstrapChezmoi', "cmd /c del `"$target`" & rmdir `"$(Split-Path $target)`"")
}
