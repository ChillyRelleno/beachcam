#!/bin/bash
#**************RECENT*****************
cd /home/beachcam/cam/gif/recent
convert -delay 20 -dispose previous -layers optimize -limit memory 64 -loop 0 *.jpg /home/beachcam/cam/gif/recent.gif
#**************HOURLY*****************
#cd /home/beachcam/cam/gif/hour
#**************DAILY******************
#cd /home/beachcam/cam/gif/day
