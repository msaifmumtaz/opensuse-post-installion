# opensuse-post-installation
OpenSuse Post installation script will install or do following things:

1. Install ZSH, GIT and Gvim
2. Install Zsh Tools (Oh my Zsh, zsh-autosuggestion,powerlevel10k)
3. Install Multimedia Codec, VLC, Youtube Downloader.
4. Install Brave Browser and VS Code using official Repos.
5. Install and Enable Flatpak (Install Flatpak Skype and Postman Clients)
6. Install and Configure LAMP Stack(PHP, Apache 2, Mysql)

![Powerlevel10k](
https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

## Installtion
```
git clone https://github.com/msaifmumtaz/opensuse-post-installation.git post-install
cd post-install
sudo chmod +x ./post-installation-opensuse.sh
sh post-installation-opensuse.sh
```

## Customize Terminal

run following commands
```
cp ./.p10k.zsh ~/
cp ./.zshrc ~/
sudo cp ./.p10k.zsh ~/
sudo cp ./.zshrc ~/
```
**Thank You**