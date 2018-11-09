#!/bin/bash

if [${MY_POD_NAME}='consul-cluster-0' ]
then
  echo "./consul agent -server -bootstrap-expect 1   -disable-host-node-id -client 0.0.0.0 -ui"
  ./consul agent -server -bootstrap-expect 1   -disable-host-node-id -client 0.0.0.0 -ui
else
  echo "./consul agent -server -join consul-cluster-0 -ui  -disable-host-node-id -client 0.0.0.0"
  ./consul agent -server -join consul-cluster-0 -ui  -disable-host-node-id -client 0.0.0.0
fi 
