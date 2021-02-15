# opensuse-post-installation
OpenSuse Post installation script will install or do following things:

1. Install ZSH, GIT and Gvim
2. Install Zsh Tools (Oh my Zsh, zsh-autosuggestion,powerlevel10k)
3. Install Multimedia Codec, VLC, Youtube Downloader.
4. Install Brave Browser and VS Code using official Repos.
5. Install and Enable Flatpak (Install Flatpak Skype and Postman Clients)
6. Install and Configure LAMP Stack(PHP, Apache 2, Mysql)


## Installtion
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

if you have any issue feel free to contact me using [Twitter](https://twitter.com/msaifmumtaz)


**Thank You**