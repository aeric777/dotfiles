#!/bin/bash


echo "====================================================="
echo "*This bash script helps you finish relative setting "
echo "====================================================="


cd ~
mkdir .junk
echo "***Successfully creat .junk in your home directory"

ln -s Documents/dotfiles/.bashrc .bashrc
echo "***Successfully link .bashrc"

ln -s Documents/dotfiles/.vimrc .vimrc
echo "***Successfully link .vimrc"

ln -s Documents/dotfiles/auto_update/.update .update
echo "***Successfully link .update"


ln -s Documents/dotfiles/.tmux.conf .tmux.conf
echo "***Successfully link .tmux.conf"

ln -s Documents/dotfiles/.gitconfig .gitconfig
echo "***Successfully link .gitconfig"

# ln -s Documents/dotfiles/.zshrc .zshrc
# echo "***Successfully link .zshrc"

source .bashrc
echo "***Successfully source .bashrc"

source .tmux.conf 
echo "***Successfully source .tmux.conf"

source .gitconfig 
echo "***Successfully source .gitconfig"

# source .zshrc 
# echo "***Successfully source .zshrc"

echo "====================================================="
echo "Configuration almost done,there are few things you need to do:"
echo "1.Please change your password in ~/Documents/dotfiles/auto_update/.passwd"
echo "2.check what else files you need in /dotfiles that didn't automatically linked by this script"
echo "*"
echo "Enjoy your day!  :D"
echo "====================================================="
