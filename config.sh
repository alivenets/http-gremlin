#!/bin/sh
echo "1"
curl -s -XPOST -d '{"name" : "gremlin", "listen" : "toxiproxy:443", "upstream" : "example.com:443"}' http://toxiproxy:8474/proxies
echo "2"
curl -s -XPOST -d '{"type" : "limit_data", "attributes" : {"bytes" : 1024}}' http://toxiproxy:8474/proxies/gremlin/toxics
