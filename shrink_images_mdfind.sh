#!/bin/bash

# limit our search the current directory and all subdirectories of the current directory
DIR=$(pwd)

# the maximum length or width (whichever is greater) in pixels.
# also limits our search to images larger than this
MAX_SIZE=2590

# tell xargs to run this many sips processes in parallel
CONCURRENCY=4

mdfind -0 -onlyin $DIR "kMDItemPixelHeight > $MAX_SIZE || kMDItemPixelWidth > $MAX_SIZE"| xargs -0 -P $CONCURRENCY -n 1 sips -Z $MAX_SIZE



