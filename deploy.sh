#!/bin/bash

# Deploy the Docker image using docker-compose
docker-compose up -d

# Check if the deployment was successful
if [ $? -eq 0 ]; then
  echo "Docker image deployed successfully."
else
  echo "Docker image deployment failed."
  exit 1
fi

