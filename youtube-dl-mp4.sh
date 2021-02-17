#!/bin/bash
color=$'\e[1;34m'
# Get User Argument -p (Path to store Videos) -u (url Of Video)
while getopts ":p:u:" arg; do
    case $arg in
    p) VIDEOPATH=$OPTARG ;;
    u) URL=$OPTARG ;;
    esac
done
CURRENTDATE=$(date +"%d-%b-%Y")
if [ "$VIDEOPATH" == "" ]; then
    cd ~/Videos
    mkdir "${CURRENTDATE}-Youtube-Videos"
    cd "${CURRENTDATE}-Youtube-Videos"
    youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -i --merge-output-format "mp4" --geo-bypass $URL
    echo "$color Your Video Stored at: /home/${USER}/Videos/${CURRENTDATE}-Youtube-Videos"
else
    if [ -d $VIDEOPATH ]; then
        cd $VIDEOPATH
        youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -i --merge-output-format "mp4" --geo-bypass $URL
        echo "$color Your Video Stored at: $VIDEOPATH"
    else
        echo "Your Provided Path Not Found try with correct path or without -p "
    fi
fi