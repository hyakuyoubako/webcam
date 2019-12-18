#!/bin/sh
#1時間ごとにwebcamで撮影、保存するスクリプト2019-11-25 osanai

#cd `dirname $0`
#fswebcam -f 10 -s 10 -r 320x200 /home/pi/pic/'date%Y%m%d-%H%M%S'.jpg

#ディレクトリをカレントにする
cd /home/pi/webcam

#撮影できたか判断2019-12-10osanai
if [ ! -e /var/www/html/date`date "+%Y%m%d-%H"`.jpg ] ; then

	#ウェブカメラで撮影する。
	/usr/bin/fswebcam -D 3 -S 10 -f 10 /home/pi/pic/'date%Y%m%d-%H'.jpg
	sleep 2s

#fswebcam -r 3 -s 3 /home/pi/pic/'date%Y%m%d-%H'.jpg
#sleep 2s
#fswebcam /home/pi/pic/'date%Y%m%d-%H'.jpg
#sleep 2s
#DATE=$date "+%Y%m%d-%H"

	sudo cp -u /home/pi/pic/date`date "+%Y%m%d-%H"`.jpg /var/www/html/

fi

#コピーやリネームで日付をファイル名にすることができなかったその残骸
#sudo rename /var/www/html/date24h.jpg /var/www/html/"date${DATE}".jpg
#sudo rename /var/www/html/date24h.jpg /var/www/html/'date%Y%m%d-%H'.jpg



