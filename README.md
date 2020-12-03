# consul-cluster

consul集群的容器

### How to build
```
cd image-Dockerfile
docker buikld -t="YOUR DOCKER NAME".
```

### How to deploy
```
cd kubernetes-yaml
調整statefulset.yaml 上的image name 為你build的image
kubectl apply -f statefulset.yaml
kubectl apply -f consul-ui-svc.yaml
```


