#!/bin/sh
docker stop haproxy && docker rm haproxy
docker run -d --name haproxy -p 1936:1936 -p 8081:80 -v $(pwd)/haproxy:/usr/local/etc/haproxy:ro haproxy:1.7
echo 'View stats: http://localhost:1936/stats'
