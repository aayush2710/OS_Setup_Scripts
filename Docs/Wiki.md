# LINUX- WIKI


Yet another linux documentation for some common linux operations.

This Wiki provides support for following distros
1. Arch Based - Eg Arch Linux, Manjaro, Etc
2. Debian Based - Debian, Ubuntu, Linux Mint, Pop-OS, etc


## Index
1. [Arch Installation](#arch-installation)
2. [Vim](#vim-personal-config)
3. [Virt Manager](#virt-manager)
4. [ZSH](#zsh)
5. [Aptx/LDAC/AAC](#aptxldacaac)
6. [VA-APi](#intel-vaapi---hardware-acceleration-for-chromium)
7. [Netflix 1080p](#netflix-1080p-via-kodi)
8. [CPU Governer](#cpu-governer-intel-p-state)
9. [Matlab Installation](#matlab-installation)
10. [Sound Quality Improvements](#sound-quality-improvements)
11. [Hibernation](#hibernation)

## Arch Installation
  - Choose either BTRFS or EXT4 file system and run first script accordingly.
  
```
    $ cd ArchInstall
    $ vim btrfs.sh or vim ext4.sh
```

 - Set environment variables **swappart** and **mainpart** with swap partition id and os partition id. (eg /dev/sdb1 run "lsblk" to see partition table)
```
    $ vim script2.sh
```

 - set EFI partition in variable **efipart**
 - set Swap partition in variable **swappart**
 - set desired username in variable **username**
 - set desired hostname in variable **hostname**
```
    $ bash btrfs.sh or bash ext4.sh
    $ arch-chroot /mnt
    $ bash script2.sh
```
 - Reboot and ArchLinux Installation is ready


## VIM (Personal config)

Vim is a CLI based minimalist text editor with many productive options. VIM (Vi - Improved) is a clone of popular text editor Vi. Lots of plugins are available on vim which take productivity and functionality to a whole different level.

List of Plugins I Use 

1. [Vim-Plug](https://github.com/junegunn/vim-plug) - A minimalist plugin manager for vim
2. [vim-airline](https://github.com/vim-airline/vim-airline) - Airline for vim
3. [vim-ale](https://github.com/dense-analysis/ale) - Asynchronous lint engine
4. [vim-gitgutter](https://github.com/airblade/vim-gitgutter) -A Vim plugin which shows a git diff in the sign column. 
5. [vim-editorconfig](https://github.com/editorconfig/editorconfig-vim) - This is an EditorConfig plugin for Vim
6. [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git plugin for vim 
7. [vim-align](https://github.com/junegunn/vim-easy-align) - A simple, easy-to-use Vim alignment plugin.
8. [vim-ansible](https://github.com/pearofducks/ansible-vim) - This is a vim syntax plugin for Ansible 2.x,
9. [vim-nerdcommenter](https://github.com/preservim/nerdcommenter) - Comment functions so powerful—no comment necessary.
10. [vim-nerdtree](https://github.com/preservim/nerdtree) - The NERDTree is a file system explorer for the Vim editor.
11. [vim-surround](https://github.com/tpope/vim-surround) - Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
12. [vim-syntastic](https://github.com/vim-syntastic/syntastic) - Syntastic is a syntax checking plugin for Vim 
13. [ack.vim](https://github.com/mileszs/ack.vim) - Run your favorite search tool from Vim,
14. [vim-commentary](https://github.com/tpope/vim-commentary) - Commenting plugin for vim 
15. [vim-repl](https://github.com/sillybun/vim-repl) - Python interactive shell environment for vim
16. [python-syntax](https://github.com/vim-python/python-syntax) - Python syntax highligtinh plugin for vim
17. [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) -Preview markdown on your modern browser with synchronised scrolling and flexible configuration
18. [jupytext.vim](https://github.com/goerz/jupytext.vim) - Edit jupyter notebooks in vim

Setup Vim with all these plugins
##### For Arch
Install Vim and its plugins
```
$ sudo pacman -S vim vim-airline vim-airline-themes vim-ale vim-gitgutter vim-editorconfig vim-fugitive vim-align vim-ansible  vim-nerdcommenter vim-nerdtree vim-surround vim-syntastic --noconfirm 
```
```
$ yay -S vim-plug
$ cp Arch/.vimrc ~/.vimrc
```
Open Vim and run :PlugInstall

##### For Debian/Ubuntu 

Install Vim and its plugins
```
$ sudo apt install vim 
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
$ cp Debian/.vimrc ~/.vimrc
```
Open Vim and run :PlugInstall




## Virt Manager

The virt-manager application is a desktop user interface for managing virtual machines through libvirt. It primarily targets KVM VMs, but also manages Xen and LXC (linux containers). It presents a summary view of running domains, their live performance & resource utilization statistics. Wizards enable the creation of new domains, and configuration & adjustment of a domain’s resource allocation & virtual hardware. An embedded VNC and SPICE client viewer presents a full graphical console to the guest domain.

##### For Arch

Run
```
$ sudo pacman -S virt-manager
$ sudo pacman -S ebtables openbsd-netcat dnsmasq bridge-utils qemu
$ sudo systemctl enable libvirtd.service    
$ sudo systemctl start libvirtd.service    
```

##### For Debian/Ubuntu

Run
```
$ sudo apt install virt-manager qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils vlan    
```

## ZSH
The Z shell is a Unix shell that can be used as an interactive login shell and as a command interpreter for shell scripting. Zsh is an extended Bourne shell with many improvements, including some features of Bash, ksh, and tcsh.

Plugins

1. [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search) -  History search plugin for ZSH.
2. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Syntax highlighting for ZSH
3. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) -  suggests commands as you type based on history and completions.

##### For Arch
Install zsh and plugins
```
$ sudo pacman -S zsh
$ sudo pacman -S zsh-history-substring-search zsh-syntax-highlighting zsh-autosuggestions
$ cp Arch/.zshrc ~/.zshrc  
```


##### For Debian/Ubuntu
Install zsh and plugins
```
$ sudo apt install zsh
$ sudo apt install zsh-substring-search zsh-syntax-highlighting
$ cp Debian/.zshrc ~/.zshrc
$ cp Debian/.zshrc_wsl ~/.zshrc  (For WSL2)
```

## Aptx/LDAC/AAC

[Pulseaudio Modules Bluetooth](https://github.com/EHfive/pulseaudio-modules-bt) provides Aptx / Aptx HD / LDAC / AAC codecs on linux
##### For Arch 
Install via AUR 
```
$ yay -S pulseaudio-modules-bt libldac
$ pulseaudio --k
```


##### For Debian/Ubuntu
Add berglh repository and install package
```
$ sudo add-apt-repository ppa:berglh/pulseaudio-a2dp
$ sudo apt update
$ sudo apt install pulseaudio-modules-bt libldac
```


## Intel VAAPI - Hardware Acceleration for chromium
Adding GPU based acceleration for video playback on linux.

##### For Arch

Install Intel VAAPI drivers
```
$ sudo pacman -S intel-gpu-driver libva-intel-driver libva-utils intel-gpu-tools
```

- Chromium in official arch repositories is VAAPI patched
- Google-Chrome doesnt support any kind of hardware acceleration on linux
- Chromium spin offs like ungoogled-chromium, chromium-vaapi support hardware acceleration via VA-API.
- Brave browser comes prebuilt with VA-API patch on linux

To run Chromium with hardware acceleration
Run chromium/brave/etc with the following flag
1. On XORG -  ``` chromium --use-gl=desktop  ```
2. On Wayland - ```chromium --use-gl=egl  ``` 

Or make this flag permanent by writing it in  ```~/.config/chromium-flags.conf```
Run ```echo "--use-gl=desktop" > ~/.config/chromium-flags.conf``` 
or ```echo "--use-gl=egl" > ~/.config/chromium-flags.conf```

(For brave do the same with ```~/.config/brave-flags.conf``` )

Then Go to ```chrome://flags``` and enable ```#enable-accelerated-video-decode``` , ``` #ignore-gpu-blocklist``` , ```#enable-gpu-rasterization```.

To verify run ```$ sudo intel_gpu_top``` and check if video decode is being consumed 

or check video decoder at ```chrome://media-internals```.
Hardware accelerated: MojoVideoDecoder, GpuVideoDecoder.
In-software decoding: VpxVideoDecoder, FFmpegVideoDecoder, Dav1dVideoDecoder.
##### For Debian/Ubuntu

Install Intel VAAPI drivers
```
sudo apt install intel-gpu-va-driver i965-va-driver vainfo intel-gpu-tools
```
- Google-Chrome or Chromium in official repositories don't support VA-API.
- Patched chromium with VA-API support is available via PPA's. Try [saiarcot895/chromium-beta](https://launchpad.net/~saiarcot895/+archive/ubuntu/chromium-beta) or [xalt7x/chromium-deb-vaapi](https://launchpad.net/~xalt7x/+archive/ubuntu/chromium-deb-vaapi)
- Chromium spin offs like ungoogled-chromium, chromium-vaapi support hardware acceleration via VA-API.
- Brave browser comes prebuilt with VA-API patch on linux

After installing a VA-API supported chromium, Go to ```chrome://flags``` and enable ```#enable-accelerated-video-decode``` , ``` #ignore-gpu-blocklist``` , ```#enable-gpu-rasterization```.

To verify run ```$ sudo intel_gpu_top``` and check if video decode is being consumed.

## Netflix 1080p via KODI

Netflix is available only at 720p via all popular browsers like chrome, chromium and firefox on all platforms including Microsoft Windows and Mac OS. To run Netflix 1080p on Linux, we can use Kodi. 

##### For Arch

Install Kodi
``` 
$ sudo pacman -S kodi kodi-addons-inputstream-adaptive
```
##### For Debian/Ubuntu
Install Kodi
``` 
$ sudo pacman -S kodi kodi-addons-inputstream-adaptive
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:team-xbmc/ppa
$ sudo apt-get update
$ sudo apt-get install kodi kodi-inputstream-adaptive
```

##### Install Netflix Kodi Plugin
Download [Netflix Plugin for Kodi](https://github.com/CastagnaIT/plugin.video.netflix) from official github repo [here]((https://github.com/CastagnaIT/plugin.video.netflix)).

Run Kodi and Go to addons and then add via zip. Install the zip file downloaded above. Then Go to Addon -> install from repository -> select CastagnaIT repository -> Install Netflix plugin.

Login to the netflix plugin and enjoy 1080p streams on linux!!

## CPU Governer (Intel P-State)
CPU frequency scaling enables the operating system to scale the CPU frequency up or down in order to save power. CPU frequencies can be scaled automatically depending on the system load, in response to ACPI events, or manually by userspace programs.

A CPU Governer defines the rules or patterns for OS to scale CPU frequency depending on load. See the table below for list of governers.

|Governor|	Description|
| ------------- |:-------------:|
| performance	| Run the CPU at the maximum frequency.
|powersave	| Run the CPU at the minimum frequency.
|userspace	| Run the CPU at user specified frequencies.
|ondemand	| Scales the frequency dynamically according to current load. Jumps to the highest frequency and then possibly back off as the idle time increases.
|conservative	| Scales the frequency dynamically according to current load. Scales the frequency more gradually than ondemand.
|schedutil	| Scheduler-driven CPU frequency selection

Depending on the scaling driver, one of these governors will be loaded by default:
- ondemand for AMD and older Intel CPU.
- powersave for Intel CPUs using the intel_pstate driver (Sandy Bridge and newer).


To change CPU governer manually

- Check all the available governers with 
  ``` $ cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors ```
- Set the CPU governer you want 
  ``` $ echo <governer> | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor ```
    replace **<governer>** with any of the available CPU governers
- To check which CPU governer is currently in operation
  ``` $ cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor ```


You can also use [**CPUFreq**](https://github.com/konkor/cpufreq) to configure your CPU scaling settings with a GUI. 
CPUFreq is available in Gnome as a shell extention. You can install it from the gnome extension store [here](https://extensions.gnome.org/extension/1082/cpufreq/). 
For other platforms, please refer the official [CPUFreq install guide](https://github.com/konkor/cpufreq/blob/master/INSTALL.md)

## Matlab Installation
Matlab installation on Debian based OS is easy but some may face issues with missing libraries or temporary file directory in Arch based distros. So here is a fix

##### For Arch
1. Download official MATLAB linux package from official website.
2. Install Libselinux
    ``` 
    $ yay -S libselinux
    ```
3. Create a temp directory
    ``` 
    $ mkdir temp 
    ```
4. Unzip Matlab and Install
    ```
    $ unzip matlab.zip -d matlab
    $ cd matlab
    $ sudo ./install -downloadFolder temp -tmpdir temp
    ```

##### For Debian/Ubuntu
- Download official MATLAB linux package and Install
    ```
    $ unzip matlab.zip -d matlab
    $ cd matlab
    $ sudo ./install
    ```


## Sound Quality Improvements
Some changes in Pulse Audio configuration can improve audio quality in linux. This can be done by changing certain parameters in ```/etc/pulse/daemon.conf```.

| Property      | Value           | 
| ------------- |:-------------:|
| Default Sample Format     | float32 |
| Resample method      | soxr-vhq      |
| Default sample rate | 48000      |
| Realtime priority | 9      |

Note : These modifications are not suited for old computers and hardware.

Changes can be easily done by running the script ```$ bash common/pulseaudio-improvements.sh```

## Hibernation
To enable hibernation via swap in linux

1) Create a swap and enable it
```
$ sudo mkswap /dev/<swap>
$ sudo swapon /dev/<swap>
```
Replace swap with partition id of swap. For example /dev/sda2

2) Auto enable swap on every boot by adding it to FSTAB
```
$ sudo bash -c "echo UUID=$(lsblk -no UUID /dev/<swap>) none swap defaults 0 0 >> /etc/fstab"
```
3) Add resume to Hooks in ```/etc/mkinitcpio.conf```.
```
For example
HOOKS="base udev autodetect modconf block keyboard keymap plymouth filesystems"
Change it to
HOOKS="base udev autodetect modconf block keyboard keymap plymouth filesystems resume"
```
4) Add kernel parameters to ```/etc/default/grub```. Edit the file and look for GRUB_CMDLINE_LINUX_DEFAULT key. To its value add 
```resume=UUID=<UUID of SWAP Partition> ```

To Find UUID of any partition run, ```echo $(lsblk -no UUID /dev/<SWAP>)```

5) Update grub
```
$ grub-mkconfig -o /boot/grub/grub.cfg
```
###### EASY method

or use an easy script 

```
$ vim common/cswap
```
Edit **swappart** variable and set your swap partition id

```
$ bash common/cswap
```





## Software Preferences

| Type      | Software           | 
| ------------- |:-------------:|
| Web Browser     | Brave |
| Text Editor      | Vim      |
| IDE | VSCode      |
| Torrent Client | QBittorent      |
| Video Player | VLC      |
| Desktop Environment | Gnome      |
| Virtual Machine | Red Hat Virt-Manager      |

