#!/bin/sh

# Russ Bielawski
# 2012-11-15: pretty quick and dirty
# 2015-04-12: slightly more quick and dirty


if [ ! -d "./bin" ]; then
   mkdir bin
fi

make_params=$*

# Attempt to 'make' in every directory not named "bin".
# Then, attempt to copy a binary of the same name into the directory named "bin".
for ii in `ls -1`; do
   if [ "bin" != $ii ]; then
      if [ -d $ii ]; then
         cd $ii
         make $make_params
         if [ 0 -eq $? ] && [ -e $ii ]; then
            chmod u+x $ii
            cp -pf $ii ../bin
         fi
         cd ..
      fi
   fi
done

