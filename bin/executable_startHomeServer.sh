#!/bin/bash

DOCKER_COMPOSE_DIR="/media/driveD/HomeServer/Docker"
DOCKER_COMPOSE_FILE="${DOCKER_COMPOSE_DIR}/docker-compose.yml"

# Check if Docker is running
if ! systemctl is-active --quiet docker; then
  echo "Docker is not running. Starting Docker..."
  sudo systemctl start docker
else
  echo "Docker is already running."
fi

# Navigate to the directory containing the docker-compose file
cd "$DOCKER_COMPOSE_DIR" || { echo "Directory not found: $DOCKER_COMPOSE_DIR"; exit 1; }

# Start the containers
if [ -f "$DOCKER_COMPOSE_FILE" ]; then
  echo "Starting Home Server..."
  docker-compose up -d
else
  echo "docker-compose.yml file not found in $DOCKER_COMPOSE_DIR"
  exit 1
fi

