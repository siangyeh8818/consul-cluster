docker run -idt -h consul1 -p 8400:8400 -p 8500:8500 -p 8600:8600 -p 8301:8301 -p 8302:8302 -p 8300:8300 --net=host consul:latest /usr/local/bin/docker-entrypoint.sh agent -server -bootstrap-expect 1  -bind 172.16.106.130 -disable-host-node-id -client 0.0.0.0 -ui