#!/bin/bash
# Change default shell to fish
set -euo pipefail

etc_shells=/etc/shells
new_default_shell=$(command -v fish)

if ! grep -q "$new_default_shell" "$etc_shells"; then
  echo "Add fish to list of accepted shells"
  echo "$new_default_shell" | sudo tee -a "$etc_shells"
fi

if [ "$SHELL" != "$new_default_shell" ]; then

  echo "Setting default shell to FISH for current user"
  chsh -s "$new_default_shell"
fi
