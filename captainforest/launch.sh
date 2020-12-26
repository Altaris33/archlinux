#!/usr/bin/env bash

# directory stored in variable
DIR="$HOME/.config/polybar/captainforest"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar datebar &
# polybar battery_and_inc_bar &

polybar -q captaintopbar -c  "$DIR"/config.ini &
polybar -q datebar -c "$DIR"/config.ini &
