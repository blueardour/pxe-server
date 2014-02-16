# ! /bin/bash

path1=$1
path2=$2

echo Remove files those in $path1 but not in $path2
a=`ls $path1`
for i in $a
do
  if [ ! -e $path2/$i ]; then rm $path1/$i; fi
done

