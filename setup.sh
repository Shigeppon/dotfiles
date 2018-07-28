#!/bin/bash

# backup用ディレクトリの作成
if [ -e $HOME/backup ]; then
    echo "backup is exist"
else
    mkdir $HOME/backup
fi

SCRIPT_DIR=$(cd $(dirname $0); pwd)

#シンボリックリンクの作成
ln -sf $SCRIPT_DIR/.vimrc $HOME/.vimrc
ln -sf $SCRIPT_DIR/.bashrc $HOME/.bashrc
ln -sf $SCRIPT_DIR/.bash_profile $HOME/.bash_profile
ln -sf $SCRIPT_DIR/.zshrc $HOME/.zshrc
ln -sf $SCRIPT_DIR/.zcompdump $HOME/.zcompdump
ln -sf $SCRIPT_DIR/.tmux.conf $HOME/.tmux.conf
ln -sf $SCRIPT_DIR/.vim $HOME/.vim
ln -sf $SCRIPT_DIR/.profile $HOME/.profile
ln -sf $SCRIPT_DIR/.rspec $HOME/.rspec
#bashのカラー化はbsdではcolorlsで行うのでdir_colorsは使わい(gnuls用なので)
#ln -sf $HOME/dotfiles/.dir_colors $HOME/.dir_colors
ln -sf $SCRIPT_DIR/.gitignore $HOME/.gitignore
ln -sf $SCRIPT_DIR/.gitconfig $HOME/.gitconfig
ln -sf $SCRIPT_DIR/.screenrc $HOME/.screenrc
