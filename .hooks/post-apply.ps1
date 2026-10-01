#!/bin/bash

set -euo pipefail

echo "I run @ THE END"

[ -f "$HOME/bin/chezmoi" ] || exit

echo "FAIL"

exit 1
