#!/bin/bash

DIRECTORY="$HOME/Downloads/Youtube/"

#check if the directory exists. If it doesn't, create it
if [ ! -d "$DIRECTORY" ]; then
  mkdir "$DIRECTORY"
fi
cd "$DIRECTORY"

echo  "Paste the URL to the video you want to convert and press return "
echo " "
read url

# Explanation of the options we're using: 
#   -x : extract the audio track
#   --audio-quality 0 : use the highest quality audio
#   -o "%(title)s.%(ext)s" : use the video title as the name of the file
youtube-dl -x --audio-quality 0 -o "%(title)s.%(ext)s" $url >> /dev/null

echo "Download Complete! "
echo "You can close this window."
echo " "
echo " "
echo " "

# open a finder window at $HOME/Downloads/Youtube/
open .

exit 0
