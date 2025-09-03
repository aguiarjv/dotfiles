#!/bin/bash

# --- Volume & mute ---
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

# --- Main icon and text ---
if [[ $current_volume == *"MUTED"* ]]; then
    icon=""
    text="---"
elif [ "$volume" -gt "99" ]; then
    icon=""
    text="$volume%"
elif [ "$volume" -gt "65" ]; then
    icon=""
    text="$volume%"
elif [ "$volume" -gt "30" ]; then
    icon=""
    text="$volume%"
elif [ "$volume" -gt "0" ]; then
    icon=""
    text="$volume%"
else
    icon=""
    text="---"
fi

# --- Output device---
output=$(pactl get-default-sink)
output_desc=$(pactl list sinks | awk -v dev="$output" '
  $0 ~ "Name: "dev {found=1}
  found && /Description:/ {print substr($0, index($0,$2)); exit}
')

# --- Input device---
input=$(pactl get-default-source)
input_desc=$(pactl list sources | awk -v dev="$input" '
  $0 ~ "Name: "dev {found=1}
  found && /Description:/ {print substr($0, index($0,$2)); exit}
')

# --- Returning json to waybar ---
echo "{\"text\": \"$icon $text\", \"tooltip\": \" Output: $output_desc\n Input: $input_desc\"}"
