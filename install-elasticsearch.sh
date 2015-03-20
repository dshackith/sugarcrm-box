#!/bin/bash 

mkdir -p /etc/puppet/modules; 
if [ ! -d /etc/puppet/modules/elasticsearch ]; then 
  puppet module install elasticsearch-elasticsearch --version 0.90.0 
fi 
