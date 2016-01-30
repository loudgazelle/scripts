#!/bin/bash
# from https://github.com/loudgazelle/scripts

DIRECTORY="$HOME/Downloads/YouTube/"

#check if the directory exists. If it doesn't, create it
if [ ! -d "$DIRECTORY" ]; then
  mkdir "$DIRECTORY"
fi
cd "$DIRECTORY"

echo  "Paste the URL to the video you want to convert and press return "
echo " "
read url

youtube-dl -x --audio-quality 0 -o "%(title)s.%(ext)s" $url >> /dev/null

echo "Download Complete! "
echo "You can close this window."
echo " "
echo " "
echo " "

# open a finder window at the current directory, 
# which we earlier set to $HOME/Downloads/Youtube/
open .

exit 0
