#!/bin/bash
#cd /home/beachcam/cam/out
#*************RECENT***************
RECENT=$(ls -1t /home/beachcam/cam/out/*.jpg | head -10)
#move to directory for imagemagick
rm /home/beachcam/cam/gif/recent/*.jpg
cp $RECENT /home/beachcam/cam/gif/recent
#convert to smaller size
#cd /home/beachcam/cam/gif/recent/
for img in /home/beachcam/cam/gif/recent/*.jpg; do
convert "$img" \
-resize 30% \
-sampling-factor 4:2:0 \
-strip \
-quality 85 \
-interlace Plane \
-gaussian-blur 0.05 \
-colorspace RGB \
"$img"
done
#*************HOURLY***************
#cp $HOURLY /home/beachcam/cam/gif/hour
#*************DAILY***************
#cp $DAILY /home/beachcam/cam/gif/day
