#!/bin/bash

set -euo pipefail

target="$HOME/bin/chezmoi"

[[ -e "$target" ]] || exit 0

export PATH=/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:$PATH

if type chezmoi &>/dev/null; then
  rm -f "$target" && rmdir "$(dirname "$target")" 2>/dev/null || true
fi

if type gnome-session-quit &>/dev/null; then
  gnome-session-quit --no-prompt
fi
