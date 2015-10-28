#!/bin/bash
/root/register_halo.sh 
/etc/init.d/cphalod start
/root/write_target_file.sh
httperf --server=/root/target --port=80 --num-conn=50000 --rate=100
