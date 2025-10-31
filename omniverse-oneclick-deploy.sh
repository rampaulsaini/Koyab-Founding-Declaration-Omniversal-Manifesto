#!/bin/bash
set -e
echo "Starting one-click deploy (example using docker compose)."

if [ -f docker-compose.yml ]; then
  docker compose up -d --build
else
  echo "docker-compose.yml not found. Add your container definitions or image."
fi

echo "Containers (if any):"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
