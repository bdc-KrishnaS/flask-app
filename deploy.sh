#!/bin/bash

# Define variables
STACK_NAME="flask-app-stack"
COMPOSE_FILE="docker-compose.yml"

echo "Removing the existing stack (if it exists)..."
docker stack ls | grep $STACK_NAME && docker stack rm $STACK_NAME

echo "Waiting for the removal to complete..."
sleep 10

echo "Deploying the updated stack..."
docker stack deploy -c $COMPOSE_FILE $STACK_NAME

echo "Deployment completed."
