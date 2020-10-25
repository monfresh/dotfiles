#!/bin/sh

# Add fish to /etc/shells and change to fish
if ! grep -qs "fish" /etc/shells; then
 fancy_echo "Adding fish to /etc/shells ..."
 echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
 chsh -s /usr/local/bin/fish
fi

if [ ! -d "$HOME/.local/share/omf" ]; then
  fancy_echo "installing omf ..."
  cd ~/projects
  git clone https://github.com/oh-my-fish/oh-my-fish
  cd oh-my-fish
  bin/install --offline
fi
