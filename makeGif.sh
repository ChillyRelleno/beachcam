#!/bin/bash
#**************RECENT*****************
cd /home/beachcam/cam/out/gif/recent
convert -delay 20 -dispose previous -layers optimize -limit memory 64 -loop 0 *.jpg /home/beachcam/cam/out/recent.gif
#**************HOURLY*****************
#cd /home/beachcam/cam/out/gif/hour
#**************DAILY******************
#cd /home/beachcam/cam/out/gif/day
