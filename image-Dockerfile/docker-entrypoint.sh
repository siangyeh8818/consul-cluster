#!/bin/bash

if [${MY_POD_NAME}='consul-0' ]
then
  ./consul agent -server -bootstrap-expect 1   -disable-host-node-id -client 0.0.0.0 -ui
else
  ./consul agent -server -join consul-0 -ui  -disable-host-node-id -client 0.0.0.0"
fi 
