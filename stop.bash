#!/bin/bash
PID=`ps -ef | grep server_linux_amd64 | grep -v grep | awk '{print $2}'`
if [[ "" != "$PID" ]]; then
echo "killing $PID"
kill -9 $PID
fi
