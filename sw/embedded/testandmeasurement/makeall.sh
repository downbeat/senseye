#!/bin/sh

# Russ Bielawski
# 2012-11-15

# pretty quick and dirty

prognames=( 'frontdisplayandsave'
            'fronteyedetect'
            'glassescapsnapshots'
            'glassescapstream'
            'glassesreplaystream' )


if [ ! -d "./bin" ]; then
   mkdir bin
fi

for ii in ${prognames[*]}; do
   if [ -d $ii ]; then
      cd $ii
      make
      if [ 0 == $? ]; then
         cp -pf $ii ../bin
      fi
      cd ..
   fi
done

