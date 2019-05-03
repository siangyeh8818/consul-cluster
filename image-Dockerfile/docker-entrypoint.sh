#!/bin/bash

mkdir -p /opt/consul/data

if [ ${MY_POD_NAME} = 'consul-cluster-0' ];
then
  echo $MY_POD_NAME
  echo "./consul agent -server -bootstrap-expect 1   -disable-host-node-id -client 0.0.0.0 -ui -data-dir=/opt/consul/data"
  ./consul agent -server -bootstrap-expect 1   -disable-host-node-id -client 0.0.0.0 -ui -data-dir=/opt/consul/data
else
  echo $MY_POD_NAME
  echo "./consul agent -server -join consul-cluster-0.consul-discovery.default.svc.cluster.local:8301 -ui  -disable-host-node-id -client 0.0.0.0 -data-dir=/opt/consul/data"
  ./consul agent -server -join consul-cluster-0.consul-discovery.default.svc.cluster.local:8301 -ui  -disable-host-node-id -client 0.0.0.0 -data-dir=/opt/consul/data
fi 
