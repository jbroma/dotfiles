!#/usr/bin/bash

# set up monitors
source ~/.config/scripts/monitors.sh

# source .Xresources (overrides existing settings, use -merge to append)
xrdb ~/.Xresources
#wal --theme base16-rebecca
feh --bg-scale ~/Pics/current_wallpaper.jpg
