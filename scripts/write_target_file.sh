#!/bin/bash
#export TARGET=`netstat -r | grep default | awk '{print $2}'`
export TARGET=`ifconfig eth0  | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}'`
printf "%s" "$TARGET" > /root/target
