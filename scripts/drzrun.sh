#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/wallpaper.png &
xset r rate 200 50 &
picom &

dash ~/.local/drzdwm/drzbar.sh &
while type drzdwm >/dev/null; do chadwm && continue || break; done
