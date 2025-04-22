#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/current.ini &
polybar cpu -c ~/.config/polybar/current.ini &
polybar memory -c ~/.config/polybar/current.ini &
polybar filesystem -c ~/.config/polybar/current.ini &

## Right bar
polybar target -c ~/.config/polybar/current.ini &
polybar ethernet -c ~/.config/polybar/current.ini &
polybar vpn -c ~/.config/polybar/current.ini &
polybar primary -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &
