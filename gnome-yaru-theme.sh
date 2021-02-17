message="Hello"

#Print some messages
COLUMNS=$(tput cols) 
color=$'\e[1;35m'
star="$color***************************************"
msg="$color$message $USER!"
msg1="$color Welcome to Gnome Yaru Theme  Installation."
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"
printf "%*s\n" $(((${#msg}+$COLUMNS)/2)) "$msg"
printf "%*s\n" $(((${#msg1}+$COLUMNS)/2)) "$msg1"
printf "%*s\n" $(((${#star}+$COLUMNS)/2)) "$star"

echo "$color Starting Yaru Installation"
sudo zypper in git meson ninja glib2-devel sassc
git clone https://github.com/ubuntu/yaru.git yaru
cd yaru
sudo meson "build" --prefix=/usr
sudo ninja -C "build" install
cd ..
sudo rm -rf yaru
echo "$color Yaru Theme Installation Completed SuccessFully. Now you can set theme using gnome-tweaks."