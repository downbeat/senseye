#!/bin/sh

# Russ Bielawski
# 2012-11-15

# pretty quick and dirty

if [ ! -d "./bin" ]; then
   mkdir bin
fi

for ii in `ls -1`; do
   if [ -d $ii ]; then
      cd $ii
      make
      if [ 0 == $? ]; then
         cp -pf $ii ../bin
      fi
      cd ..
   fi
done

