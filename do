#! /bin/sh

set -e

dir=`pwd`

install_file()
{
    src="${dir}/"$1
    des="$HOME/$1"
    if [ -f $des -o -d $des ];then
        if [ -f "${des}.bak" -o -d "${des}.bak" ];then
            rm -rf "${des}.bak"
        fi
        mv -f $des "${des}.bak"
    fi
    ln -s $src $des
}

install_file .screenrc
install_file .vimrc
install_file .vim

