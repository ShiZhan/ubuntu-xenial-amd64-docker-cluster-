#!/bin/bash
if [ `id -u` != "0" ]; then
    echo "Please re-run `basename $0` as root."
    exit 1
fi

if [ $HOSTNAME == "controller" ]; then
    kubectl apply -f kube-flannel.yml
fi

cp subnet.env /run/flannel/
