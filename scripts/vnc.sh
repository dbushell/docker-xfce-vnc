#!/bin/bash

mkdir -p "$HOME/.vnc"

VNC_PASSWD="$HOME/.vnc/passwd"
if [[ -f $VNC_PASSWD ]]; then
  rm -f $VNC_PASSWD
fi
echo "$VNC_PASSWORD" | vncpasswd -f >> $VNC_PASSWD
chmod 600 $VNC_PASSWD

if [ -z "$VNC_PASSWORD" ]; then
  Xvnc $DISPLAY -depth $VNC_DEPTH -geometry $VNC_RESOLUTION \
    -SecurityTypes None &
else
  Xvnc $DISPLAY -depth $VNC_DEPTH -geometry $VNC_RESOLUTION \
    -PasswordFile $VNC_PASSWD &
fi

sleep 1

xset -dpms &
xset s noblank &
xset s off &

/usr/bin/startxfce4
