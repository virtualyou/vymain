#!/bin/bash

###################################################################
# bootstrap.sh
# Copyright (c) 2023 David L. Whitehurst
# License: https://github.com/dlwhitehurst/vymain/blob/main/LICENSE
#

# you're new VirtualYou project directory
mkdir ~/development/virtualyou

# get VirtualYou tools
cd ~/development/virtualyou
git clone git@github.com:dlwhitehurst/vytools.git

# update PATH with tools bin directory
echo "export PATH=$PATH:/home/david/development/virtualyou/vytools/bin" >> ~/.bashrc
source ~/.bashrc