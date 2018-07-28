#! /bin/bash

status=$(ssh -o BatchMode=yes -o ConnectTimeout=5 ubuntu@192.168.0.169 echo ok 2>&1)

echo $status
