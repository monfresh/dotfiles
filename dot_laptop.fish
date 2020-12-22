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

# Set up chruby-fish using fork until this PR is merged:
# https://github.com/JeanMertz/chruby-fish/pull/39
gh repo clone bouk/chruby-fish
cd chruby-fish
git checkout -b rewrite-fish origin/rewrite-fish
make install
