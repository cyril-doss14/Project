#!/bin/bash

# Build the Docker image
docker build -t my-image1 .


if [ $? -eq 0 ]; then
  echo "Docker image built successfully."
else
  echo "Docker image build failed."
  exit 1
fi

