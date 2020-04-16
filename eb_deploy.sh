#!/usr/bin/env bash

env1='flask-nginx-01'
env2='flask-nginx-02'

cname=$(eb status ${env1} | grep CNAME)

list=( ${cname//:/ } )

if [ "`echo ${list[1]} | grep 'standby'`" ]; then
    echo "eb deploy ${env1}"
    eb deploy ${env1}
else
    echo "eb deploy ${env2}"
    eb deploy ${env2}
fi
