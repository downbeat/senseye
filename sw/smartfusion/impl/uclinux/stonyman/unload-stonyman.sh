#!/bin/sh

module="stonyman"
device="stonyman"

numcams=3

rmmod $module $* || exit 1

for(ii=0; ii<$numcams; ii=$ii+1); do
   rm -f /dev/${device}0
done
