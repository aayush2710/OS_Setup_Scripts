#Install Anaconda
pkgver=2020.11
pythonver=3.8

#Download Conda
wget https://repo.anaconda.com/archive/Anaconda3-$pkgver-Linux-x86_64.sh
bash Anaconda3-$pkgver-Linux-x86_64.sh -b -p $HOME/anaconda3

#Patch Anaconda Navigator
#bash vscode_path.sh

#Conda Init
source /home/$USER/anaconda3/bin/activate
source ~/.zshrc

cp .wsl/anaconda-icon-256x256.ico ~/anaconda3\lib\python3.8\site-packages\anaconda_navigator\static\images
cp .wsl/spyder-icon-1024x1024.ico ~/anaconda3\lib\python3.8\site-packages\anaconda_navigator\static\images
cp ".wsl/Anaconda-Navigator (WSL)" "/mnt/c/Users/aayus/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Pengwin Applications"
cp ".wsl/Spyder (WSL)" "/mnt/c/Users/aayus/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Pengwin Applications"


#Conda Packages
conda install -y pytorch torchvision cpuonly -c pytorch
conda install -y -c conda-forge keras
conda install -y -c anaconda tensorflow-gpu
conda install -c -y anaconda h5py
conda update --all

