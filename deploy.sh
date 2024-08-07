#!/bin/bash

# Push the Docker image to the dev repository on Docker Hub
docker tag myimage:latest docker push cyrildoss14/dev:latest
docker push docker push cyrildoss14/dev:latest

# Check if the push was successful
if [ $? -eq 0 ]; then
  echo "Docker image pushed to dev repository successfully."
else
  echo "Failed to push Docker image to dev repository."
  exit 1
fi
