#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP adress"
echo "Synthax ./ipsweep.sh 10.0.0"

else
for ip in `seq 1 10`; do
ping -c 1 $1.$ip | grep "From" | cut -d " " -f 2 &
done
fi
