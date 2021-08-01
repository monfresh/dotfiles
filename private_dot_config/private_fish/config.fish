status --is-interactive; and eval (/opt/homebrew/bin/brew shellenv)

source ~/.fish_aliases

source ~/.fish_variables

chruby ruby-2.7.2

status --is-interactive; and source (nodenv init -|psub)

starship init fish | source
