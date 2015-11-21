
# source .zoptions if it exists
[ -f $HOME/.zoptions ] && source $HOME/.zoptions

# source .zprompt if it exists
[ -f $HOME/.zprompt ] && source $HOME/.zprompt

# source .zaliases if it exists
[ -f $HOME/.zaliases ] && source $HOME/.zaliases

SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zsh_history

autoload -Uz compinit

if [ "$USER" != "root" ]; then
  compinit
  test -f /usr/local/share/zsh/site-functions/_aws && source /usr/local/share/zsh/site-functions/_aws
  test -f /usr/share/zsh/vendor-completions/_awscli && source /usr/share/zsh/vendor-completions/_awscli
  #test -f /usr/local/bin/aws_zsh_completer.sh && source /usr/local/bin/aws_zsh_completer.sh
fi
