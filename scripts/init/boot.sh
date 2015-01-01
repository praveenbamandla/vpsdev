#! /bin/sh

sleep 3s
export DISPLAY=:1
Xvfb :1 -screen 0 1024x768x16 &
sleep 5s
fluxbox &
sleep 5s
conky &
x11vnc -display :1 -shared -forever -passwd xxxxx &
sleep 2s
cd /root/praveenb.in
node app.js &
sleep 2s
cd /root/noVNC
./utils/websockify --web public 5555 localhost:5900 &

