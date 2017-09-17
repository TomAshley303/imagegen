#!/bin/bash

for i in `seq $3 $4`; do
  mx=$1;my=$2;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- output/$i.png
done
