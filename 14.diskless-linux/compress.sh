# ! /bin/bash

initrd=initrd.img
tmp=rootfs.img

base=/tftp_root/14.diskless-linux

cd $base

if [ -d rootfs ]
then
  cd rootfs
  find . | cpio -H newc -o > ../rootfs.img
  cd ..
  gzip -9 rootfs.img
  rm $initrd
  mv -v rootfs.img.gz $initrd
else
  echo "Folder not found..."
fi

ls -lh $initrd

