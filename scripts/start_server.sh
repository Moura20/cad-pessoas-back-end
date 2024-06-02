#!/bin/bash
echo "Starting Docker containers"
cd /home/ec2-user/app
docker-compose -f /home/ec2-user/app/docker-compose.yml up -d
