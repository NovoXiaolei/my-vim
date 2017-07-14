#!/bin/bash

sudo dnf install zsh
sudo dnf install curl wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
