#!/bin/sh
#xrandr --output VBOX0 --mode 1920x1200 --pos 0x0 --rotate normal --output VBOX1 --mode 1920x1200 --pos 1920x0 --rotate normal
xrandr --output VGA-0 --mode 1920x1200 --pos 0x0 --rotate normal --output VGA-1 --mode 1920x1200 --pos 1920x0 --rotate normal
# reset desktop switch panel plugin
dbus-send --print-reply --dest=org.xfce.Panel /org/xfce/Panel org.xfce.Panel.Terminate boolean:true

