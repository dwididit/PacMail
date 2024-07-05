#!/usr/bin/env bash

# Wait for PostgreSQL
while ! nc -z database 5432; do
  echo "Waiting for PostgreSQL..."
  sleep 1
done

exec "$@"
