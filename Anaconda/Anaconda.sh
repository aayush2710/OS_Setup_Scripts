#Install Anaconda
pkgver=2020.11
pythonver=3.8

wget https://repo.anaconda.com/archive/Anaconda3-$pkgver-Linux-x86_64.sh
bash Anaconda3-$pkgver-Linux-x86_64.sh -b -p $HOME/anaconda3
sudo rm -rf /home/$USER/anaconda3/lib/python$pythonver/site-packages/anaconda_navigator/api/external_apps/vscode.py
source /home/$USER/anaconda3/bin/activate
conda init
conda init zsh
source ~/.zshrc
sudo cp Anaconda.desktop /usr/share/applications
sudo cp Spyder.desktop /usr/share/applications
sudo echo " Icon=/home/$USER/anaconda3/lib/python3.8/site-packages/anaconda_navigator/static/images/logos/spyder.png;" >> /usr/share/applications/Spyder.desktop
#Conda Packages

conda install -y pytorch torchvision cpuonly -c pytorch
conda install -y -c conda-forge keras
conda install -y -c anaconda tensorflow-gpu
#conda install -c conda-forge opencv
conda install -c anaconda h5py
conda update --all

