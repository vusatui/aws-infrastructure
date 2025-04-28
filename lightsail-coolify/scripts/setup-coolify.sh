#!/bin/bash
apt-get update -y
apt-get install -y docker.io docker-compose curl
systemctl enable docker
systemctl start docker
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash