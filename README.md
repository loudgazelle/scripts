# scripts
the repo where I store my `bash` scripts. 

## shrink_images
I have a GoPro that I mount on the inside of my windshield and use to take pictures of long road-trips with the goal of (eventually) combining those pictures into a time-lapse video... or multiple time-lapse videos. I set the GoPro to take pictures as often as every 2 seconds so I end up with a *lot* of pictures, and if the road trip is long enough I end up running out of space on my laptop. I created this script to help deal with that problem. 
I found that using the OS X `sips` command to shrink the images by _just 2 pixels_ resulted in a massive file-size reduction - some files ended up being 25% of their original size. I haven't done any deep analysis of why this is, but my guess is that running sips on my laptop results in better jpeg compression than the GoPro camera is capable of doing. 

## youtube_extractor
I created this wrapper script so my wife can use [`youtube-dl`](https://github.com/rg3/youtube-dl) to download songs from YouTube without having to remember the command line options. 

# Contributing
If you have an improvement to suggest feel free to fork the repo and submit a pull request. 
