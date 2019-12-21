#!/bin/bash
#20191220おー

picDATE=$(date +"%Y/%m/%d  %H:%M:%S")
raspistill -w 640 -h 400 -o /home/pi/pic/now.jpg
echo $picDATE > /home/pi/pic/nowjpgdate.txt
sudo cp /home/pi/pic/now.jpg /var/www/html/
sudo cp /home/pi/pic/nowjpgdate.txt /var/www/html/
