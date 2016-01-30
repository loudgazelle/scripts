# shrink_images_mdfind
uses the `mdfind` command to search the spotlight metadata store for images with a width or height greater than `MAX_SIZE` pixels, then uses `sips` command to shrink them to have a maximum width or height equal to `MAX_SIZE` pixels. 

I used this to shrink a bunch of time-lapse pictures that I took with my GoPro. I found that shrinking the images by just 2 pixels resulted in a significant file-size reduction so that some files ended up being 25% of their original size. I haven't done any deep analysis of why this is, but my guess is that running `sips` on my laptop results in better jpeg compression than the GoPro camera is capable of doing. 

I'll likely also use it to shrink these images further, since the GoPro takes images that are 2592 × 1944 pixels, and the biggest images I'll need for a 1080-P HD time-lapse video is 1440 x 1080 pixels. 

## Parameters
#### DIR
we use the `onlyin` option of `mdfind` to limit the scope of where we search for images. Set this value to the directory where the files reside that you want to shrink and the command will run on that directory and driectories below it. 
I set this to the current working directory with the assumption that the script lives in the same location as the files you want to shrink, but you can change that. 

#### MAX_SIZE
This parameter serves two purposes:
* first, we provide it to the `mdfind` command to find all images that have a width or height (in pixels) greater than this value
* next, we provide it to the `sips` command and have it shrink all of the images that the `mdfind` found so that their maximum width or height (whichever is greater) is equal to this value

#### CONCURRENCY
we pass this value to the `-P` option of `xargs`, which tells `xargs` to run at most this many invocations of the `sips` command. 
I set this to `4` because that's how many vcores my laptop has, but I don't think it's limited by the amount of vcores, so you can set it higher or lower as needed. 
