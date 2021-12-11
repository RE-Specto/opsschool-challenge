#!/bin/bash
#add fix to exercise6-fix here
SRV=$( [ $(hostname) = "server1" ] && echo "server2" || echo "server1" )
SRC=${@:1:$#-1}
TRG=${@: -1}
scp  -i /home/vagrant/.ssh/id_rsa -v $SRC vagrant@${SRV}:${TRG} 2>&1 | grep Sink | awk '{sum+=$3}END{print sum}'
