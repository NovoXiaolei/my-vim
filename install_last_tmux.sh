#!/bin/bash

sudo apt install libevent-devel
sudo apt install ncurses-devel
git clone https://github.com/tmux/tmux.git
cd tmux/
sh autogen.sh
./configure && make
sudo make install
