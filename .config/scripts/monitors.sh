#!/bin/bash

internal="eDP-1"
external="DP-1"
hdmi1="HDMI-1"
hdmi2="HDMI-2"

if xrandr | grep -P "(?<'!'e)DP-1\ connected";then
	xrandr --output $external --auto --output $internal --off
elif xrandr | grep "$hdmi1 connected";then
	xrandr --output $hdmi1 --auto --output $internal --off 
elif xrandr | grep "$hdmi2 connected";then
	xrandr --output $hdmi2 --auto --output $internal --off 
else
	xrandr --output $internal --auto --output $external --off --output $hdmi1 --off --output $hdmi2 --off 
fi
