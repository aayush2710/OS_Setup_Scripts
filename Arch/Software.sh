#!/bin/zsh

# Created by Aayush


echo "Installing for arch"


#################### ESSENTIALS #####################

echo "Installing Essentials"


#Syncing database with repos
sudo pacman -Syu --noconfirm


#Install Build Tools
sudo pacman -S fakeroot gcc make cmake base-devel --noconfirm
sudo pacman -S git curl wget  --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S pamac-aur-git

#Fonts
yay -S --noconfirm --needed nerd-fonts-terminus nerd-fonts-hack
sudo pacman -S firefox chromium --noconfirm

#Install Drivers
sudo pacman -S intel-media-driver libva-utils --noconfirm


#PulseAudio config
yay -S pulseaudio-modules-bt --noconfirm --needed

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


#Printing
sudo pacman -S cups hplip --noconfirm
sudo systemctl start org.cups.cupsd.service  
sudo systemctl enable org.cups.cupsd.service  


#Vim Neofetch and Mozilla fonts
sudo pacman -S vim neofetch ttf-fira-sans ttf-fira-mono ttf-fira-code --noconfirm

#Terminal Transparency Mod
yay -S  gnome-terminal-transparency

#Wireguard VPN
sudo pacman -S wireguard-tools --noconfirm

#Theme
yay -S matcha-gtk-theme --needed --noconfirm
yay -S whitesur-gtk-theme --needed --noconfirm

#Shotwell
sudo pacman -S shotwell --noconfirm

#Vim
sudo pacman -S vim-airline vim-airline-themes vim-ale vim-gitgutter vim-editorconfig vim-fugitive vim-align vim-ansible  vim-nerdcommenter vim-nerdtree vim-surround vim-syntastic --noconfirm

yay -S vim-plug --needed --noconfirm

#Pop
yay -S pop-shell-shortcuts gnome-shell-extension-pop-shell --noconfirm --needed

#Extensions
yay -S  --noconfirm --needed gnome-shell-extension-cpufreq
yay -S  --noconfirm --needed gnome-shell-extension-vitals
yay -S  --noconfirm --needed gnome-shell-extension-dash-to-dock
yay -S  --noconfirm --needed gnome-shell-extension-gsconnect

#Extras
yay -S teams --noconfirm --needed
yay -S xdman --noconfirm --needed
flatpak install spotify discord

#Git Config
git config --global user.email "aayush.goyal54@gmail.com"
git config --global user.name "Aayush Goyal"

#Install Anaconda
cd Anaconda
bash Anaconda.sh

