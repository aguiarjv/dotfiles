#!/bin/bash

# Muting with pactl
pactl set-sink-mute @DEFAULT_SINK@ toggle

# Muting with wpctl
#wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
