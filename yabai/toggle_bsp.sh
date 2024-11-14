#!/bin/bash

focusid=$(yabai -m query --spaces | jq '.[] | select(.["has-focus"]==true).index')
focuslayout=$(yabai -m query --spaces | jq '.[] | select(.["has-focus"]==true)' | jq -r '.type')

if [[ $focuslayout == "float" ]]; then 
  yabai -m space $focusid --layout bsp 
else
  yabai -m space $focusid --layout float
fi


