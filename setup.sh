#!/bin/sh

sudo xbps-install -y gcc libgcc libgcc-devel gcr gcr-devel xorg libX11 libX11-devel libXinerama libXinerama-devel libXft libXft-devel libXrandr libXrandr-devel libuuid libuuid-devel pkg-config make font-awesome terminus-font vim ranger neofetch feh

mv .xinitrc ~/.xinitrc
mv .bashrc ~/.bashrc
mv .bash_profile ~/.bash_profile
mv .vimrc ~/.vimrc

sudo mv dwmbar_date /usr/local/bin/dwmbar_date

cd dwm/ || exit
sudo make clean install
cd ..
cd dmenu/ || exit
sudo make clean install
cd ..
cd st/ || exit
sudo make clean install
cd ..
cd surf/ || exit
sudo make clean install
cd ..

mv dwm/ ~/dwm/
mv dmenu/ ~/dmenu/
mv st/ ~/st/
mv surf/ ~/surf/

echo "All done!"
