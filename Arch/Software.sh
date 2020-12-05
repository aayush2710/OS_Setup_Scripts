#!/bin/zsh

# Created by Aayush


echo "Installing for arch"


#################### ESSENTIALS #####################

echo "Installing Essentials"
sudo pacman -S reflector --noconfirm
sudo reflector -c "IN" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

#Syncing database with repos
sudo pacman -Syu --noconfirm


#Install Build Tools
sudo pacman -S fakeroot gcc make cmake python-pyqt5 --noconfirm
sudo pacman -S git curl wget  --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S pamac-aur-git

#Fonts
yay -S --noconfirm --needed nerd-fonts-terminus nerd-fonts-hack
yay -S microsoft-edge-bin

#Install Browsers
yay -S brave-bin --noconfirm --needed

# Install latest google-chrome(Stable) from AUR
yay -S google-chrome --noconfirm --needed

#PulseAudio config
sudo cp Extras/daemon.conf /etc/pulse/daemon.conf
yay -S pulseaudio-modules-bt

sudo cp .zshrc /home/$USER

# Install qBittorent
sudo pacman -S qbittorrent --noconfirm 

# Install VLC
sudo pacman -S vlc --noconfirm

#Install VSCode
yay -S visual-studio-code-bin --noconfirm --needed

#Printing
sudo pacman -S cups hplip --noconfirm
sudo systemctl start org.cups.cupsd.service  
sudo systemctl enable org.cups.cupsd.service  

# Install telegram-desktop and pulse effects
sudo pacman -S telegram-desktop pulseeffects --noconfirm
sudo rm /usr/share/applications/in.lsp*

# Install Kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

# Install Sublime
yay -S --noconfirm --needed sublime-text-3-imfix

# Spotify
yay -S --noconfirm --needed spotify-dev

#Vim Neofetch and Mozilla fonts
sudo pacman -S vim neofetch ttf-fira-sans ttf-fira-mono ttf-fira-code --noconfirm

#Terminal Transparency Mod
yay -S  gnome-terminal-transparency

#Wireguard VPN
sudo pacman -S wireguard-tools --noconfirm

#Theme
yay -S matcha-gtk-theme --needed --noconfirm

#Kodi
sudo pacman -S kodi kodi-x11 kodi-addon-inputstream-adaptive papirus-icon-theme --noconfirm

#Shotwell
sudo pacman -S shotwell krita --noconfirm

#Vim
sudo pacman -S vim-airline vim-airline-themes vim-ale vim-gitgutter vim-editorconfig vim-fugitive vim-align vim-ansible  vim-nerdcommenter vim-nerdtree vim-surround vim-syntastic --noconfirm

yay -S vim-plug --needed --noconfirm

#Pop
yay -S pop-shell-shortcuts gnome-shell-extension-pop-shell --noconfirm --needed
yay -S --noconfirm --needed pop-gtk-theme-bin 
yay -S --noconfirm --needed pop-icon-theme-git

#Extensions
yay -S  --noconfirm --needed gnome-shell-extension-cpufreq
yay -S  --noconfirm --needed gnome-shell-extension-vitals
yay -S  --noconfirm --needed gnome-shell-extension-dash-to-dock
yay -S  --noconfirm --needed gnome-shell-extension-arc-menu
yay -S  --noconfirm --needed gnome-shell-extension-gsconnect
yay -S bitwarden-bin --noconfirm --needed
yay -S teams --noconfirm --needed
yay -S xdman --noconfirm --needed
flatpak install spotify discord zoom

#Git Config
git config --global user.email "aayush@archlinux"
git config --global user.name "Aayush Goyal"

#Install Anaconda
cd Anaconda
bash Anaconda.sh

