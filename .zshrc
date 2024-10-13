PROMPT='%# '

autoload -Uz select-word-style &&
             select-word-style bash

autoload -Uz compinit &&
             compinit

zstyle ':completion:*' menu on select

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
