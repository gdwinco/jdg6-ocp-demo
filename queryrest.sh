#!/bin/sh
echo USAGE query.sh {CACHE HOST:PORT}

HOST_ADDR=datagrid-app-1-sample-project.rhel-cdk.10.1.2.2.xip.io
HOST_ADDR=127.0.0.1:8081
CACHE=default2

if [ $# -eq 1 ]; then
  echo ---Setting cache to: $1
  CACHE=$1
fi

if [ $# -eq 2 ]; then
  echo ---Setting cache to: $1
  CACHE=$1
  echo ---Setting host to: $2
  HOST_ADDR=$2
fi

echo "-----------------------"
time curl -vi  http://$HOST_ADDR/rest/$CACHE/A
echo "-----------------------"
curl http://$HOST_ADDR/rest/$CACHE/B
echo "-----------------------"
curl http://$HOST_ADDR/rest/$CACHE/C
echo "-----------------------"
