#!/bin/bash
yay -S --mflags --skipinteg --noconfirm --needed libselinux
mkdir /home/aayush/temp
unzip matlab_R2020a_glnxa64.zip -d matlab
cd matlab
sudo ./install -downloadFolder /home/aayush/temp -tmpdir /home/aayush/temp


