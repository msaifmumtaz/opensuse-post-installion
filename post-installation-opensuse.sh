#!/bin/bash
#Define variables here
message="Hello"

#Print some messages
COLUMNS=$(tput cols) 
color=$'\e[1;35m'
star="$color***************************************"
msg="$color$message $USER!"
msg1="$color Welcome to Post Installation Script."
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#msg}+$COLUMNS)/2)) "$msg"
printf "%*s\n" $(((${#msg1}+$COLUMNS)/2)) "$msg1"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"

echo "$color Updating ...."
sudo zypper update

# Misc
echo "$color Installing GIT, Gvim and zsh ...."
sudo zypper in git gvim zsh

# ZSH TOOLS
zsh="$color Starting ZSH Tools Installtion"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#zsh}+$COLUMNS)/2)) "$zsh"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
chsh -s $(which zsh)
echo "$color Zsh Tools Installtion Completed."
echo "$color Insatlling Powerline Fonts"
git clone https://github.com/powerline/fonts.git
cd fonts
sudo ./install.sh

# Multimedia Packages
mmc="$color Installing Multimedia Codecs, VLC"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#mmc}+$COLUMNS)/2)) "$mmc"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper dup --from packman --allow-vendor-change -y
sudo zypper in vlc youtube-dl
echo "$color Multimedia Codecs and VLC installtion completed."

# Brave Browser
echo "$color Installing Brave Browser ...."
sudo zypper install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper install brave-browser
echo "$color Brave Browser Installed Successfully."

# VSCode
vscode="$color Starting Visual Studio Installtion"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#vscode}+$COLUMNS)/2)) "$vscode"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
sudo zypper refresh
sudo zypper install code
echo "$color VSCode Installed Successfully."

# FlatPak
flat="$color Starting Flatpak Installtion"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#flat}+$COLUMNS)/2)) "$flat"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
sudo zypper install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.skype.Client
sudo flatpak install flathub com.getpostman.Postman
echo "$color Flatpak installation Completed."

# ulauncher Launcher
albert="$color Starting ulauncher Installtion"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#albert}+$COLUMNS)/2)) "$albert"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
zypper addrepo https://download.opensuse.org/repositories/home:Dead_Mozay/15.4/home:Dead_Mozay.repo
zypper refresh
zypper install ulauncher


# LAMP Installation
lamp="$color Starting LAMP Installtion"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#lamp}+$COLUMNS)/2)) "$lamp"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"

sudo zypper install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo zypper install mariadb mariadb-client mariadb-tools
sudo systemctl start mysql
sudo systemctl enable mysql
sudo zypper install php8 php8-mysql apache2-mod_php8 php-composer
sudo a2enmod php8
sudo systemctl restart apache2
sudo zypper install phpMyAdmin
sudo systemctl restart apache2
sudo mysql_secure_installation

final="$color Post installtion completed and configured."
thank="$color Thank you (saifcodes.com)"
layout="$color ############################################"
printf "%*s\n" $(((${#layout}+$COLUMNS)/2)) "$layout"
printf "%*s\n" $(((${#final}+$COLUMNS)/2)) "$final"
printf "%*s\n" $(((${#thank}+$COLUMNS)/2)) "$thank"
printf "%*s\n" $(((${#layout}+$COLUMNS)/2)) "$layout"

echo "Logout or Reboot Now."
