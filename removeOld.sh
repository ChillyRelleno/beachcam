#!/bin/bash
#OLD=$(ls -1t /home/beachcam/cam/out/*.jpg | tail -n +11)
#rm -f $(ls -1t /home/beachcam/cam/out/*.jpg | tail -n +11)
#rm "$OLD"
#echo $OLD
#rm /home/beachcam/cam/out/*(Om[1,11])

#OLD=$/home/beachcam/cam/out/*.jpg(Om[1,11])
#cd /home/beachcam/cam/out
#OLD=$(ls -tp *.jpg | grep -v '/$' | tail -n +11 | tr '\n' '\0')
#OLD=$(ls -tp *.jpg |! grep
#echo $OLD
#xargs -0 rm "$OLD"
#rm -f "$OLD"
#echo $OLD | xargs -0 rm --f

cd /home/beachcam/cam/out
OLD=$(ls -1t /home/beachcam/cam/out/*.jpg | grep -v '/$' | tail -n +11)
#RECENT=$(ls -1t /home/beachcam/cam/out/*.jpg | head -10)
echo "$OLD"
#rm -f "$OLD"
for img in "$OLD"; do
rm -f $img
done
rm /home/beachcam/cam/gif/recent/*.jpg
rm /home/beachcam/cam/gif/day/*.jpg
rm /home/beachcam/cam/gif/hour/*.jpg
