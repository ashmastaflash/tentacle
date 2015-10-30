#!/bin/bash
/root/register_halo.sh
/etc/init.d/cphalod start
#/root/write_target_file.sh
httperf --server=$TARGET_DNS --port=80 --num-conn=50000 --rate=5
