#!/bin/bash

# Get volume using pactl
muted=$(/usr/bin/pactl get-sink-mute @DEFAULT_SINK@ | sed 's/Mute: //')
volume=$(/usr/bin/pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)
current_volume=""

if [[ $muted == "yes" ]]; then
    current_volume="MUTED"
fi

# Get volume using wpctl (pipe-wire)
# current_volume=$(/usr/bin/wpctl get-volume @DEFAULT_AUDIO_SINK@)
# volume="$(echo $current_volume | cut -f 2 -d " " | sed 's/\.//g')"

# if [ "$volume" -lt "100" ]; then
#     volume="${volume:1}"
# fi
#
# if [ "$volume" -lt "10" ]; then
#     volume="${volume:1}"
# fi

if [[ $current_volume == *"MUTED"* ]]; then
    echo "  ---"
elif [ "$volume" -gt "99" ]; then
    echo "  $volume%"
elif [ "$volume" -gt "65" ]; then
    echo "  $volume%"
elif [ "$volume" -gt "30" ]; then
    echo "  $volume%"
elif [ "$volume" -gt "10" ]; then
    echo "  $volume%"
elif [ "$volume" -gt "0" ]; then
    echo "  $volume%"
elif [ "$volume" -lt "1" ]; then
    echo "  ---"
fi
