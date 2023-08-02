#!/usr/bin/env bash
set +e
set -x

# assumes Rocky Linux 9

dnf upgrade --refresh

dnf install -y git jq

dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl --now enable docker
docker version
docker compose version

git clone https://github.com/Bnei-Baruch/sviva-tova.git

touch sviva-tova/.env
echo "fill in .env file and continue to post-install.sh (see compose.env.sample)"
