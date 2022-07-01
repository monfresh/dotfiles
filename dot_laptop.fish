#!/bin/bash

# Add fish to /etc/shells and change to fish
if ! grep -qs "fish" /etc/shells; then
 fancy_echo "Adding fish to /etc/shells ..."
 if apple_m1 && ! rosetta; then
   echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
   chsh -s /opt/homebrew/bin/fish
 else
   echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/fish
 fi
fi
