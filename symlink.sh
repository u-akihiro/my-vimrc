#!/bin/bash

GREEN=$'\e[0;32;1m';
RED=$'\e[0;31;1m';
YELLOW=$'\e[1;33;1m';
COLOR_OFF=$'\e[0m';

startEOF(){
    echo "$GREEN";
    echo "##################################################################################";
    echo "#                                                                                #";
    echo "#                            Welcome to PATH Setting                             #";
    echo "#                                                                                #";
    echo "##################################################################################";
    echo "$YELLOW""Neobundleのインストールと設定ファイルのパスを通します。""$COLOR_OFF";
}

endEOF(){
    echo "$YELLOW""設定が反映されました。""$COLOR_OFF";
}

vim_path(){
    git pull
    git submodule init
    git submodule update
    ln -s ~/.my_vimrc/.vimrc ~/.vimrc
    ln -s ~/.my_vimrc/_vimrc ~/_vimrc
    ln -s ~/.my_vimrc/.vim ~/.vim
}

main(){
    startEOF;
    vim_path;
    endEOF;
}

main;
