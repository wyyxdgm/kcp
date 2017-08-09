#!/bin/bash

./server_linux_amd64 -l :29901 -t 127.0.0.1:13148 -key test -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -mode fast3 > kcptun.log 2>&1 &
