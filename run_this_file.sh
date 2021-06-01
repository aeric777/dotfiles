echo"
This bash script helps you finish relative setting 
=====================================================
"

cd ~
mkdir .junk
echo "**********Successfully creat .junk in ~/"

ln -s Documents/dotfiles/.bashrc .bashrc
ln -s Documents/dotfiles/.vimrc .vimrc
ln -s Documents/dotfiles/auto_update/.update .update
# ln -s Documents/dotfiles/.zshrc .zshrc
# ln -s Documents/dotfiles/.tmux.conf .tmux.conf
# ln -s Documents/dotfiles/.gitconfig .gitconfig
echo "**********Successfully link relative dotfiles"

source .bashrc
echo "**********Successfully source .bashrc"

# source .zshrc 
# source .tmux.conf 
# source .gitconfig 


echo "
=====================================================
Configuration almost done,there are few things you need to do:
1.Please change your password in ~/Documents/dotfiles/auto_update/.passwd
2.check what else files you need in /dotfiles that didn't automatically linked by this script

Enjoy your day!  :D
=====================================================
"
