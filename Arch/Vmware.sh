#!/bin/bash
echo "Installing vmware"
sudo pacman -S fuse2 gtkmm linux-headers pcsclite libcanberra --noconfirm
yay -S --mflags --skipinteg --noconfirm --needed ncurses5-compat-libs
yay -S --mflags --skipinteg --noconfirm --needed  vmware-workstation
sudo vmware-modconfig --console --install-all
sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
sudo modprobe -a vmw_vmci vmmon
