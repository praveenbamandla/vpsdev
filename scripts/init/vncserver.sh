#!/bin/bash
PATH="$PATH:/usr/bin/"
export USER="root"
DISPLAY="1"
DEPTH="16"
GEOMETRY="1024x768"
OPTIONS="-rfbport 5555 -nolisten tcp -depth ${DEPTH} -pixelformat rgb565  -geometry ${GEOMETRY} :${DISPLAY}"
. /lib/lsb/init-functions

case "$1" in
start)
log_action_begin_msg "Starting vncserver for user '${USER}' on localhost:${DISPLAY}"
su ${USER} -c "/usr/bin/tightvncserver ${OPTIONS}"
;;

stop)
log_action_begin_msg "Stoping vncserver for user '${USER}' on localhost:${DISPLAY}"
su ${USER} -c "/usr/bin/tightvncserver -kill :${DISPLAY}"
;;

restart)
$0 stop
$0 start
;;
esac
exit 0
