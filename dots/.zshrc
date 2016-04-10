
# source .zoptions if it exists
[ -f $HOME/.zoptions ] && source $HOME/.zoptions

# source .zprompt if it exists
[ -f $HOME/.zprompt ] && source $HOME/.zprompt

# source .zaliases if it exists
# [ -f $HOME/.zaliases ] && source $HOME/.zaliases

SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zsh_history

# this loads standard zsh completions according to fpath
autoload -Uz compinit