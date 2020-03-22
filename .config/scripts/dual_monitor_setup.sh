#!/bin/bash

#This script changes between single and dual monitor config
#Quick fix for now, needs a rework!

xrandr --output eDP-1 --auto --right-of DP-1
i3-msg "workspace 7, move workspace to output eDP-1"
i3-msg "workspace 8, move workspace to output eDP-1"
i3-msg "workspace 9, move workspace to output eDP-1"
i3-msg "workspace 10, move workspace to output eDP-1"

