#!/bin/bash
echo "Building Docker containers"
cd /home/ec2-user/app
docker-compose -f /home/ec2-user/app/docker-compose.yml build
