#!/bin/bash

# backup用ディレクトリの作成
if [ -e $HOME/backup ]; then
    echo "backup is exist"
else
    mkdir $HOME/backup
fi

#シンボリックリンクの作成
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/.zcompdump $HOME/.zcompdump
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/.vim $HOME/.vim
ln -sf $HOME/dotfiles/.profile $HOME/.profile
ln -sf $HOME/dotfiles/.rspec $HOME/.rspec
#bashのカラー化はbsdではcolorlsで行うのでdir_colorsは使わい(gnuls用なので)
#ln -sf $HOME/dotfiles/.dir_colors $HOME/.dir_colors
ln -sf $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -sf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/.screenrc $HOME/.screenrc
