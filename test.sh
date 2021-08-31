#! /bin/bash
Xvfb -shmem -screen 0 $DISPLAY_INFO &
sleep 1
DISPLAY=:0 $1 &
sleep 1
DISPLAY=:0 python3 $2 1