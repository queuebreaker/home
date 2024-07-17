#!/bin/sh

sudo sleep 0

cd dwm || exit
sudo make clean install
cd ..
cd dmenu || exit
sudo make clean install
cd ..
cd st || exit
sudo make clean install
cd surf || exit
sudo make clean install
