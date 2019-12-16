#!/bin/bash
git clone https://github.com/shadowsocks/shadowsocks.git
cd shadowsocks/
git checkout master
sudo python setup.py install

