cd ~
mkdir .junk

ln -s Documents/dotfiles/.bashrc .bashrc
ln -s Documents/dotfiles/.vimrc .vimrc
ln -s Documents/dotfiles/auto_update/.update .update
# ln -s Documents/dotfiles/.zshrc .zshrc
# ln -s Documents/dotfiles/.tmux.conf .tmux.conf
# ln -s Documents/dotfiles/.gitconfig .gitconfig

source .bashrc
source .vimrc 
# source .zshrc 
# source .tmux.conf 
# source .gitconfig 
