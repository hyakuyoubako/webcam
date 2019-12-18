#!/bin/sh

#fswebcam -r 1280x720 ~/webcam/'date%Y%m%d-%H%M%S'.jpg

# タイムを分までファアイルネームにする
#fswebcam -r 1280x720 ~/webcam/'date%Y%m%d-%H%M'.jpg

#同名上書き
fswebcam -f 10 -s 10 -r 640x400 /home/pi/pic/now.jpg

sudo cp /home/pi/pic/now.jpg /var/www/html/


