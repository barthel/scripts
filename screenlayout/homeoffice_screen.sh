#!/bin/bash
# HomeOffice settings
#
# switch off and wait before switch on; bug in acpi of dell monitor or dell base station

. ~/.screenlayout/laptop_screen.sh

declare -i count=3
declare -i seconds=1

while ((count)); do
    xrandr #>/dev/null
    sleep $seconds
    ((count--))
done

xrandr --output eDP-1 --noprimary --mode 1366x768 --pos 0x0 --rotate normal \
       --output DP-1 --off \
       --output DP-1-1 --primary --mode 3440x1440 --pos 0x0 --rotate normal \
       --output DP-1-2 --off \
       --output DP-1-3 --off \
       --output DP-2 --off
       --output HDMI-1 --off \
       --output HDMI-2 --off \
