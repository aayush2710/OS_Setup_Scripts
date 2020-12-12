#!/bin/zsh

# Created by Aayush


echo "Installing for arch"


#################### ESSENTIALS #####################

echo "Installing Essentials"

#Syncing database with repos
sudo pacman -Syu --noconfirm


#Install Build Tools
sudo pacman -S yay --noconfirm

#Install Browser
sudo pacman -S firefox chromium --noconfirm
 
#Install Drivers
sudo pacman -S intel-media-driver libva-utils intel-gpu-tools --noconfirm

#PulseAudio config
sudo pacman -S pulseaudio-modules-bt --noconfirm
sudo pacman -S libldac --noconfirm


#ZSHRC
sudo cp .zshrc /home/$USER

# Install qBittorent
sudo pacman -S qbittorrent --noconfirm 

# Install VLC
sudo pacman -S vlc --noconfirm

#Install VSCode
yay -S visual-studio-code-bin --noconfirm --needed

# Install Kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

# Install Sublime
yay -S --noconfirm --needed sublime-text-3


#Vim Neofetch and Mozilla fonts
sudo pacman -S vim neofetch --noconfirm

#Terminal Transparency Mod
yay -S  gnome-terminal-transparency

#Wireguard VPN
sudo pacman -S wireguard-tools --noconfirm

#Theme
yay -S whitesur-gtk-theme --needed --noconfirm

#Shotwell
sudo pacman -S shotwell --noconfirm

#Vim
sudo pacman -S vim-airline vim-airline-themes vim-ale vim-gitgutter vim-editorconfig vim-fugitive vim-align vim-ansible  vim-nerdcommenter vim-nerdtree vim-surround vim-syntastic --noconfirm

yay -S vim-plug --needed --noconfirm

#Pop
#yay -S pop-shell-shortcuts gnome-shell-extension-pop-shell --noconfirm --needed

#Extensions
yay -S  --noconfirm --needed gnome-shell-extension-cpufreq
yay -S  --noconfirm --needed gnome-shell-extension-vitals

#Extras
yay -S teams --noconfirm --needed
yay -S xdman --noconfirm --needed
flatpak install spotify discord

#Git Config
git config --global user.email "aayush.goyal54@gmail.com"
git config --global user.name "Aayush Goyal"

#Install Anaconda
cd ..
cd Anaconda
bash Anaconda.sh


