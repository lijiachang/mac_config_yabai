#!/usr/bin/env bash

# 让屏幕1也就是主屏幕在平铺bsp和浮动float之间来回切换

spaceType=$(yabai -m query --spaces --space | jq .type)
if [ "$spaceType" = '"bsp"' ]; then
      yabai -m config --space 1 layout float
else
      yabai -m config --space 1 layout bsp
fi
