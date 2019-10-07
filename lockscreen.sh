#!/bin/bash

path=/tmp/lock

mkdir $path
flameshot full --path $path
sleep 1
mv $path/2* $path/screen.png

convert $path/screen.png -paint 2 $path/screen2.png

convert $path/screen2.png -interpolate nearest -virtual-pixel mirror -spread 5 $path/screen3.png

i3lock -i $path/screen3.png
rm -rf /tmp/lock
