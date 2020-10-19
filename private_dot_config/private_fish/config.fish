source ~/.fish_aliases

source ~/.fish_variables

source /usr/local/share/chruby/chruby.fish

source /usr/local/share/chruby/auto.fish

chruby ruby-2.7.2

status --is-interactive; and source (nodenv init -|psub)
