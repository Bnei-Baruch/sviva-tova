#!/usr/bin/env bash
set +e
set -x

# bring up services
docker compose pull
docker compose up -d --build --no-deps nginx
docker compose up -d

# CI/CD reminder
echo "REMINDER: setup ssh access for CI/CD agents"
