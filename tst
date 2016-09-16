#!/bin/bash

text=$(xclip -o)
xdotool type "$text"
