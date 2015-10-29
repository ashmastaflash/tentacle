#!/bin/bash
if [ -z {$TARGET_DNS+x} ]; then export TARGET=`ifconfig eth0  | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}'`; else export TARGET=`host -4 $TARGET_DNS | awk '{print $4}' | head -1`; fi
#export TARGET=`ifconfig eth0  | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}'`
printf "%s" "$TARGET" > /root/target
