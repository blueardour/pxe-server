# ! /bin/bash

if [ $# -ge 1 ];then path=$1; else path=/tftproot/0.winxp-drivers-via-binlsrv/drivers; fi

echo "Gen work path:=$path"

find $path -type f | awk -F/ '{print "re ^1.winxp-x86-ch/i386/"$NF"$  0.winxp-drivers-via-binlsrv/drivers/"$NF}'


