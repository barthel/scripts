#!/bin/bash
#
# activate job monitoring
# @see: http://www.linuxforums.org/forum/programming-scripting/139939-fg-no-job-control-script.html
set -m
# set -x

if [ -z "${netbeans_exec}" ]
  then
    netbeans_exec="${NETBEANS_HOME}/bin/netbeans --jdkhome ${JAVA_HOME}/ -J-Xms40m -J-Xmx2048m -J-Dorg.eclipse.swt.browser.DefaultType=mozilla -J-Djava.library.path=/usr/lib/jni:/usr/lib/x86_64-linux-gnu/jni "
fi
netbeans_cli_open_exec="${netbeans_exec} --close-group --open "


${netbeans_cli_open_exec} $@ &

