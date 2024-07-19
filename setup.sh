#!/bin/sh

while true; do

read -p "Proceed? [y/n] " PROMPT1

case $PROMPT1 in 
	[Yy] ) break;;
	[Nn] ) exit;;
	* ) echo ?;;
esac

done

sudo xbps-install -y gcc libgcc libgcc-devel gcr gcr-devel xorg libX11 libX11-devel libXinerama libXinerama-devel libXft libXft-devel libXrandr libXrandr-devel libuuid libuuid-devel picom wget tar pkg-config webkit2gtk webkit2gtk-devel make font-awesome terminus-font vim ranger neofetch feh links mupdf htop

mv .xinitrc ~/.xinitrc
mv .bashrc ~/.bashrc
mv .bash_profile ~/.bash_profile
mv .vimrc ~/.vimrc

sudo mv dwm_bardate /usr/local/bin/dwm_bardate
sudo chmod +x /usr/local/bin/dwm_bardate

git clone https://git.suckless.org/dwm
mv dwm-config.h dwm/config.h
cd dwm/ || exit
sudo make clean install
cd ..

git clone https://git.suckless.org/dmenu
mv dmenu-config.h dmenu/config.h
cd dmenu/ || exit
sudo make clean install
cd ..

git clone https://git.suckless.org/st
mv st-config.h st/config.h
cd st/ || exit
sudo make clean install
cd ..

git clone https://git.suckless.org/surf
mv surf-config.h surf/config.h
cd surf/ || exit
sudo make clean install
cd ..

mv dwm/ ~/dwm/
mv dmenu/ ~/dmenu/
mv st/ ~/st/
mv surf/ ~/surf/

echo "All done!"

while true; do

read -p "Do you wish to reboot your system? [y/n] " PROMPT2

case $PROMPT2 in 
	yes ) sudo reboot;;
	no ) exit;;
	* ) echo ?;;
esac

done
