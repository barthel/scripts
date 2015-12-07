#!/bin/sh
#xrandr --auto --output VBOX0 --pos 0x0 --rotate normal --output VBOX1 --same-as VBOX0
xrandr --auto --output VGA-0 --pos 0x0 --rotate normal --output VGA-1 --same-as VGA-0
# reset desktop switch panel plugin
dbus-send --print-reply --dest=org.xfce.Panel /org/xfce/Panel org.xfce.Panel.Terminate boolean:true

