source ~/.fish_aliases

source ~/.fish_variables

chruby ruby-2.7.2

status --is-interactive; and source (nodenv init -|psub)
