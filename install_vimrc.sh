git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'
