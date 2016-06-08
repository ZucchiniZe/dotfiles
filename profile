#!/bin/bash

# swap caps lock and escape since escape is this micro key on my laptop
/usr/bin/setxkbmap -option 'caps:ctrl_modifier'
/usr/bin/xcape -e 'Caps_Lock=Escape' 

# disable DPMS (display power management signaling)
/usr/bin/xset -dpms

# add .bin to the path for easily executable scripts
export GOPATH=$HOME/code/go
export PATH=$HOME/.bin:$HOME/.bin/priv:$GOPATH/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/Applications:/usr/local/heroku/bin:$PATH
