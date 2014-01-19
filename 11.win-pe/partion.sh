# ! /bin/bash

if [ "$1" == "" ]; then echo Filename Needed; exit -1; fi
name=`basename $1 .iso`
if [ -d $name ]; then cd $name; else mkdir $name; cd $name; fi
split -b 50m ../$1
rm ../$name.iso


