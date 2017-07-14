#!/bin/bash

sudo dnf install libevent-devel
sudo dnf install ncurses-devel
git clone https://github.com/tmux/tmux.git
cd tmux/
sh autogen.sh
./configure && make
sudo make install
