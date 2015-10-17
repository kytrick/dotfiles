#bootstrap.sh populates your $HOME directory with symlinks to your dotfiles

cd $HOME

for i in $(ls -A $HOME/dev/dotfiles/.z* $HOME/dev/dotfiles/.*rc); do 
    ln -s $i
done
