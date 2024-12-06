#!/bin/bash

# Pull the images from Docker Hub
sudo docker pull noamkont/mta_coin:server
sudo docker pull noamkont/mta_coin:miner

# Run the server container
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta noamkont/mta_coin:server

# Run 3 miner containers
for i in {1..3}
do
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta noamkont/mta_coin:miner
done