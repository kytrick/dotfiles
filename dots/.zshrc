
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

# direnv is used to set up precommand functions
# in .envrc for the directory I do work work in, I define GIT_AUTHOR_EMAIL and GIT_COMMITTER_EMAIL
if ( which direnv > /dev/null ); then 
    eval "$(direnv hook zsh)"
fi

# pyenv
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv-virtualenv-init -)"; fi

# disable virtualenv prompt prepending since it's done in RPROMPT
VIRTUAL_ENV_DISABLE_PROMPT=1
# because it's being deprecated in next version of pyenv anyway
PYENV_VIRTUALENV_DISABLE_PROMPT=1
