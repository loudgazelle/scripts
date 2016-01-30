# youtube-extractor.command
I created this dead-simple script so my wife can use youtube-dl to download songs from YouTube without having to remember the command line options. 

## Variables
#### DIRECTORY
The script sets this to `$HOME/Downloads/YouTube/` which is the `bash` equivalent of `~/Downloads/YouTube`. 

If `~/Downloads/YouTube` doesn't exist the script creates it. 

Once the download is complete we open a finder window at that directory so the user can get their file without browsing to it. 

## youtube-dl options
The command we use is: 
```bash
youtube-dl -x --audio-quality 0 -o "%(title)s.%(ext)s" $url >> /dev/null
```
| Option | What it does |
| :--- | :--- |
| `-x` | extract the audio track |
| `--audio-quality 0` | use the highest quality audio |
| `-o "%(title)s.%(ext)s"` | use the name of the video as the name of the file |
| `$url` | tells `youtube-dl` to use the video at the URL pasted by the user|
| `>> /dev/null` | hides the output of `youtube-dl` from the user |

