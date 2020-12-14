#!/bin/bash
yay -S  --noconfirm --needed libselinux
mkdir /home/aayush/temp
unzip matlab.zip -d matlab
cd matlab
sudo ./install -downloadFolder /home/aayush/temp -tmpdir /home/aayush/temp


