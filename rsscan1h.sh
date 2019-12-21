#!/bin/bash
DATE=$(date +"%Y%m%d-%H")
#撮影できたか判断2019-12-20
if [ ! -e /var/www/html/date`date "+%Y%m%d-%H"`.jpg ] ; then

	#ウェブカメラで撮影する。
        raspistill -w 384 -h 288 -o /home/pi/pic/date`date "+%Y%m%d-%H"`.jpg
	sleep 2s
	sudo cp -u /home/pi/pic/date`date "+%Y%m%d-%H"`.jpg /var/www/html/

fi

