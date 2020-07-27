#!/bin/bash

sudo yum install libevent-devel
sudo yum install ncurses-devel
git clone https://github.com/tmux/tmux.git
cd tmux/
sh autogen.sh
./configure && make
sudo make install
