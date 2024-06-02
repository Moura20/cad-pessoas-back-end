#!/bin/bash
echo "Stopping and removing old Docker containers"
docker-compose -f /home/ec2-user/app/docker-compose.yml down
