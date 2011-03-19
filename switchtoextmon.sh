#!/bin/bash
# Switch to external monitor when connected
xrandr -q | grep 'VGA1 connected' && xrandr --output LVDS1 --off --output VGA1 --auto
# Or fall back to notebook monitor if external one is not available
xrandr -q | grep 'VGA1 disconnected' && xrandr --output VGA1 --off --output LVDS1 --auto
