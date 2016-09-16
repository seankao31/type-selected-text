#!/bin/bash
sudo apt-get update
sudo apt-get install -y xclip xdotool xbindkeys
echo \#type-selected-text >> ~/.xbindkeysrc
echo '"sleep 0.3 && '$(pwd)/tst\" >> ~/.xbindkeysrc
echo Control+y >> ~/.xbindkeysrc
xbindkeys -p
