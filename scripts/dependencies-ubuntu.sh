#!/bin/bash -ev

sudo apt-get update -qq
sudo apt-get upgrade -y -qq
sudo apt-get install -y -qq autoconf build-essential pkg-config libssl-dev libboost-all-dev
sudo apt-get install -y -qq miniupnpc libminiupnpc-dev gettext
#for gui
sudo apt-get install -y -qq qtbase5-dev qttools5-dev-tools
sudo apt-get install -y -qq libdb++-dev
#latest g++
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -qq
sudo apt-get install gcc-7 g++-7 -yqq
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7
g++ --version

