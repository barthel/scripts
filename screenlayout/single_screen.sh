#!/bin/bash
#
# switch off and wait before switch on; bug in acpi of dell monitor or dell base station

. ~/.screenlayout/laptop_screen.sh

declare -i count=3
declare -i seconds=1

while ((count)); do
    xrandr >/dev/null
    sleep $seconds
    ((count--))
done

xrandr --output VIRTUAL1 --off \
       --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --noprimary \
       --output DP1 --off \
       --output HDMI2 --off \
       --output HDMI1 --off \
       --output DP1-1 --mode 1920x1200 --pos 0x0 --rotate normal --primary --crtc 1 \
       --output DP1-2 --mode 1920x1200 --pos 0x0 --rotate normal --noprimary --crtc 2 \
       --output DP1-3 --off \
       --output DP2 --off
