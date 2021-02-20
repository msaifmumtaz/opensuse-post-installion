# opensuse-post-installation
OpenSuse Post installation script will install or do following things:

1. Install ZSH, GIT and Gvim
2. Install Zsh Tools (Oh my Zsh, zsh-autosuggestion,powerlevel10k)
3. Install Multimedia Codec, VLC, Youtube Downloader.
4. Install Brave Browser and VS Code using official Repo.
5. Install and Enable Flatpak (Install Flatpak Skype and Postman Clients)
6. Install and Configure LAMP Stack(PHP, Apache 2, Mysql)


## Installation
```
git clone https://github.com/msaifmumtaz/opensuse-post-installation.git post-install
cd post-install
sudo chmod +x ./post-installation-opensuse.sh
sh post-installation-opensuse.sh
```

## Customize Terminal

![Terminal](
https://raw.githubusercontent.com/msaifmumtaz/opensuse-post-installation/master/terminal.png)

open terminal in above mentioned folder and follow the bellow commands.

```
cp ./.p10k.zsh ~/
cp ./.zshrc ~/
sudo cp ./.p10k.zsh ~/
sudo cp ./.zshrc ~/
```
if you want to customize run following command

```
p10k configure
```
## Youtube Downloader

Simple Bash Script for downloading any youtube video. It bypass geo restrictions and download best quality videos in **MP4** Format.

```
git clone https://github.com/msaifmumtaz/opensuse-post-installation.git post-install
cd post-install
sudo chmod +x ./youtube-dl-mp4.sh
sh youtube-dl-mp4.sh -p PATH -u Youtube URL
```
if you will not provide the path it will auto create a folder in Videos folder.

## Gnome-Yaru-Theme for OpenSuse

You can install Ubuntu Yaru theme in Opensuse by following below steps.
```
git clone https://github.com/msaifmumtaz/opensuse-post-installation.git post-install
cd post-install
sudo chmod +x ./gnome-yaru-theme.sh
sh gnome-yaru-theme.sh
```
Now you can enable yaru theme from Gnome tweaks. If Gnome Tweaks not installed run following command to install Gnome Tweaks.
```
sudo zypper in gnome-tweaks
```
## Force Sudo Lecture

Edit the config file, run the following command:
```
sudo visudo
```
Add the following line after the initial options to make sudo to start the lecture every time a user uses sudo:
```
Defaults        lecture=always
```

For Customized Message like this follow the following commands:

![Terminal](
https://raw.githubusercontent.com/msaifmumtaz/opensuse-post-installation/master/sudo_lecture.png)

```
sudo visudo
```

add following line after ```Defaults        lecture=always```

```
Defaults       lecture_file=/etc/sudo_lecture.txt
```

copy ```sudo_lecture.txt``` file in ```/etc/```

Now run following commands to take effect:

```
sudo -k
sudo -i
```
Happy Customization :heart_eyes:

if you have any issue feel free to contact me using [Twitter](https://twitter.com/msaifmumtaz)


**Thank You**