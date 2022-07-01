#!/bin/bash

# Add fish to /etc/shells and change shell to fish
if ! grep -qs "fish" /etc/shells; then
 fancy_echo "Adding fish to /etc/shells ..."
 echo "$(brew --prefix)/bin/fish" | sudo tee -a /etc/shells
 chsh -s "$(brew --prefix)/bin/fish"
fi
