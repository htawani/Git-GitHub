#!/bin/bash

<< info
This script will install the package(s)
Pass the package name in argument
Argument to be pass while executing script i.e. on termaina itself
Example: .install-package.sh nginx
info

echo "Installing $1"

sudo apt-get update -y > /dev/null
sudo apt-get install $1 -y > /dev/null
sudo apt-get update $1 -y > /dev/null
sudo apt-get upgrade $1 -y > /dev/null

echo "Installation completed"

