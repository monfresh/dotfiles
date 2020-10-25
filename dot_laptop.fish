#!/bin/sh

# Add fish to /etc/shells and change to fish
if ! grep -qs "fish" /etc/shells; then
 fancy_echo "Adding fish to /etc/shells ..."
 echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
 chsh -s /usr/local/bin/fish
fi

if [ ! -d "$HOME/.local/share/omf" ]; then
  fancy_echo "installing omf ..."
  curl -L https://get.oh-my.fish | fish
fi
