#!/bin/bash
export TARGET=`netstat -r | grep default | awk '{print $2}'`
printf "%s" "$TARGET" > /root/target
