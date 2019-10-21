#!/bin/bash

internal=eDP-1
external=DP-1
hdmi1=HDMI-1
hdmi2=HDMI-2

if xrandr | grep -P '(?<'!'e)DP-1\ connected';then
	xrandr --output $internal --off --output $external --auto
elif xrandr | grep '$hdmi1 connected'; then
	xrandr --output $internal --off --output $hdmi1 --auto
elif xrandr | grep '$hdmi2 connected'; then
	xrandr --output $internal --off --output $hdmi2 --auto
else
	xrandr --output $internal --auto --output $external --off --output $hdmi1 --off --output $hdmi2 --off 
fi
