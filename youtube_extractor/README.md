# youtube-extractor.command
I created this dead-simple script so my wife can use [youtube-dl](https://github.com/rg3/youtube-dl) to download songs from YouTube without having to remember the command line options. 

## Variable~~s~~
#### DIRECTORY
The script sets this to `$HOME/Downloads/YouTube/` which is the `bash` equivalent of `~/Downloads/YouTube`. 
- If `~/Downloads/YouTube` doesn't exist the script creates it. 
- Once the download is complete we open a finder window at that directory so the user can get their file without browsing to it. 

## youtube-dl options
There's a ton of [options](https://github.com/rg3/youtube-dl/blob/master/README.md#options) available in `youtube-dl` but we only use a few of them. 

The command we use is: 
```bash
youtube-dl -x --audio-quality 0 -o "%(title)s.%(ext)s" $url >> /dev/null
```
| Command Section | What it does |
| :--- | :--- |
| `-x` | tells `youtube-dl` to extract the audio track and discard the video |
| `--audio-quality 0` | tells `youtube-dl` to use the highest quality audio |
| `-o "%(title)s.%(ext)s"` | tells `youtube-dl` to use the name of the video as the name of the file |
| `$url` | tells `bash` to pass `youtube-dl` the URL pasted by the user |
| `>> /dev/null` | tells `bash` to hide the output of `youtube-dl` from the user |

