#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.56.100
sudo docker swarm join-token worker -q | xargs -I{} echo docker swarm join --token {} 192.168.56.100:2377 > /vagrant/worker.sh
