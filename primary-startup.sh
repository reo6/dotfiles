#!/bin/bash

setxkbmap -option "caps:ctrl_modifier"
xset r rate 200 30
xrandr --output DisplayPort-0 --primary --mode 3440x1440 --rate 143.97 --output DisplayPort-1 --mode 2560x1440 --rate 144 --left-of DisplayPort-0

