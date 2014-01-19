# ! /bin/bash

if [ "$1" == "" ]; then echo Filename Needed; exit -1; fi
name=`basename $1`
if [ -d $name ]; then cd $name; else echo Folder not found; exit -2; fi
cat x* > $name.iso
if [ ! -f ../$name.iso ]; then mv $name.iso ..; cd ..; rm -rf $name; fi


