#!/bin/sh

userresources=$HOME/.Xresources
xmodmap ~/.Xmodmap

nitrogen --restore &

if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

exec i3
