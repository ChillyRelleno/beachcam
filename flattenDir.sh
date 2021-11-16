#!/bin/bash
find /home/beachcam/cam -regex '.*\(jpg\|jpeg\|png\|gif\)' \! -path './out/*' \! -path './gif/*' -exec mv -t /home/beachcam/cam/out/ {} +
find /home/beachcam/cam -mindepth 1 ! -regex '^/home/beachcam/cam/out\(/.*\)?' -delete
CURRENT=$(ls -1t /home/beachcam/cam/out/*.jpg | head -1)
cp $CURRENT /home/beachcam/cam/out/current.jpg
