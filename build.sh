#!/bin/bash

# Build the Docker image
docker build -t myimage .

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Docker image built successfully."
else
  echo "Docker image build failed."
  exit 1
fi
