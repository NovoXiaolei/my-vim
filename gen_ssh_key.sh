#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "childmercy@163.com"
$eval "$(ssh-agent -s)"
ssh-add -k ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
