#!/bin/bash
az vm list -d --query "[?powerState=='VM running'].privateIps"  --output tsv > hosts

myIP=`hostname -I`
myIP="$(echo -e "${myIP}" | tr -d '[:space:]')"

idx=`grep -Fne "$myIP" hosts | cut -f1 -d:`
# sed -i "${idx}d" hosts_availability
# sed -i "${idx}d" hosts_placement
echo "removing index $idx ($myIP)"
sed -i "${idx}d" hosts
