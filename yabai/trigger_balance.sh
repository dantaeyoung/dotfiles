#!/bin/bash

if [[ $(yabai -m query --spaces --space | jq -r '."type"') == "float" ]]; then 
  yabai -m config layout bsp 
  yabai -m space --balance
  yabai -m config layout float
else
  yabai -m space --balance
fi
