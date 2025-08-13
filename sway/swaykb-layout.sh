#!/usr/bin/env bash

# Pega índice do layout ativo
active_index=$(swaymsg -t get_inputs | jq '.[] | select(.type=="keyboard") | .xkb_active_layout_index' | head -n 1)

# Associa índice ao nome curto
case "$active_index" in
0) echo "US" ;;
1) echo "BR" ;;
2) echo "US-INTL" ;;
*) echo "??" ;;
esac
