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

if [ ! -d "$HOME/.local/share/omf" ]; then
  fancy_echo "installing omf ..."
  curl -L https://get.oh-my.fish | fish
fi

if [ ! -d "$HOME/projects/monfresh/chruby-fish" ]; then
  # Set up chruby-fish using fork until this PR is merged:
  # https://github.com/JeanMertz/chruby-fish/pull/39
  cd ~/projects/monfresh || { echo "could not cd to ~/projects/monfresh"; exit 1; }
  gh repo clone monfresh/chruby-fish
  cd chruby-fish || { echo "could not cd to ~/projects/monfresh/chruby-fish"; exit 1; }
  git checkout -b rewrite-fish origin/rewrite-fish
  if apple_m1 && ! rosetta; then
    echo "running on Apple M1 Native"
    export PREFIX=/opt/homebrew
    make install
  else
    make install
  fi
fi

if ! chruby; then
  echo "chruby not found, running make install"
  cd ~/projects/monfresh/chruby-fish || { echo "could not cd to ~/projects/monfresh/chruby-fish"; exit 1; }
  if apple_m1 && ! rosetta; then
    echo "running on Apple M1 Native"
    export PREFIX=/opt/homebrew
    make install
  else
    make install
  fi
else
  echo "chruby found"
fi
