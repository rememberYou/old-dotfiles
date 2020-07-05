#!/bin/sh
#
# Started by i3 to launch programs.

if have picom; then
    if [ -f "$XDG_CONFIG_HOME/picom/picom.conf" ]; then
        picom --config "$XDG_CONFIG_HOME/picom/picom.conf" &
    else
        picom &
    fi
fi

if pgrep i3 && have dunst; then
    dunst &
fi

if have feh; then
    feh --no-fehbg --bg-center `wallpaper.py` &
fi

if have nm-applet; then
    nm-applet &
fi

if have polybar; then
    [ -f "$XDG_CONFIG_HOME/polybar/launch.sh" ] && . "$XDG_CONFIG_HOME/polybar/launch.sh" &
fi

if have unclutter; then
    unclutter --ignore-scrolling --jitter 2 &
fi
