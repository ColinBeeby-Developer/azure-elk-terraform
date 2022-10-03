#!/bin/sh

# Make sure all packages are up to date
apt update

# Increase max_map_count - this is required for ElasticSearch
echo vm.max_map_count=262144 >> /etc/sysctl.conf
sysctl -p

# Install docker
apt -y install docker.io

# Run the ELK stack container
sudo docker run -d -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk sebp/elk