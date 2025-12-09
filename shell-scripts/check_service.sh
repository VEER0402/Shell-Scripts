#!/bin/bash

# Usage: ./check_service.sh <service-name>

SERVICE=$1

if [ -z "$SERVICE" ]; then
  echo "Error: Please provide a service name!"
  exit 1
fi

STATUS=$(systemctl is-active $SERVICE)

if [ "$STATUS" = "active" ]; then
  echo "✔ $SERVICE is already running."
else
  echo "⚠ $SERVICE is NOT running. Starting it..."
  sudo systemctl start $SERVICE

  # Check again
  NEW_STATUS=$(systemctl is-active $SERVICE)
  if [ "$NEW_STATUS" = "active" ]; then
    echo "✔ $SERVICE started successfully!"
  else
    echo "❌ Failed to start $SERVICE!"
  fi
fi

