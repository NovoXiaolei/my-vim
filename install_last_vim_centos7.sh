#!/bin/bash

sudo yum install epel-release
sudo yum install gcc-c++ ncurses-devel ruby ruby-devel lua lua-devel luajit luajit-devel ctags python python-devel python3 python3-devel tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed cscope gtk3-devel libSM-devel libXt-devel libXpm-devel libappstream-glib libacl-devel gpm-devel

yum list installed | grep -i vim
# sudo yum erase vim-common.x86_64 vim-enhanced.x86_64 vim-filesystem.x86_64 vim-X11

# sudo depends on vim-minimal
sudo rpm -e --nodeps vim-minimal

sudo ln -s /usr/bin/python3.6 python3

git clone https://github.com/vim/vim.git
cd vim/

./configure --with-features=huge \
 --enable-pythoninterp=yes \
 --enable-python3interp=yes \
 --enable-perlinterp=yes \
 --disable-tclinterp \
 --with-x=yes \
 --enable-gui=gtk3 --enable-multibyte \
 --enable-cscope \
 --with-tlib=ncurses \
--enable-fail-if-missing \
--disable-darwin --enable-luainterp=yes \
--enable-rubyinterp=yes --enable-terminal \
 --enable-fontset --with-luajit --with-python3-command=python3 \
--enable-gtk3-check

make && sudo make install

hash -r

# to make deoplete work do
sudo pip3.6 install neovim
