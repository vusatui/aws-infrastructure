#!/bin/bash
apt-get update -y
# Installing docker-compose-v2 - https://github.com/coollabsio/coolify/issues/3026#issuecomment-2395297125
apt-get install -y docker.io docker-compose docker-compose-v2 curl
systemctl enable docker
systemctl start docker
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash