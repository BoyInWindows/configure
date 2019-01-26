#!/bin/bash

docker run --rm -it \
	--publish 1234:1234 \
  --publish 8000:8000 \
	--publish 8081:8081 \
  --publish 9527:9527 \
	--volumes-from node-npmGlobal \
	--volume /home/brch/dev/node:/home/node/data \
	--hostname="nodehost" \
	--user="node" \
	--name node-container \
	node-image
