#!/bin/bash
set -xe
apt-get update -y
apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker ubuntu
COMPOSE_VERSION="2.20.2"
curl -L "https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
mkdir -p /home/ubuntu/ecom
cd /home/ubuntu/ecom
cat > docker-compose.yml <<EOF
version: "3.8"
services:
  user:
    image: ${dockerhub_user}/ecom-user:${image_tag}
    ports: ["3001:3001"]
  products:
    image: ${dockerhub_user}/ecom-products:${image_tag}
    ports: ["3002:3002"]
  orders:
    image: ${dockerhub_user}/ecom-orders:${image_tag}
    ports: ["3003:3003"]
  cart:
    image: ${dockerhub_user}/ecom-cart:${image_tag}
    ports: ["3004:3004"]
  frontend:
    image: ${dockerhub_user}/ecom-frontend:${image_tag}
    ports: ["80:80"]
EOF
docker-compose up -d
