#!/bin/bash
procs=`cat hosts | wc -l`
#procs=4
cmd=$1
if [ "$#" -ge 2 ];
then
    procs=$1
    cmd=$2
fi

echo $# $procs $cmd
cat hosts | xargs -P $procs -I____ip____ ssh -o StrictHostKeyChecking=no ____ip____ $cmd
