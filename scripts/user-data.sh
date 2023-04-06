#!/bin/sh

set -x
cd /home/raspy || exit
apt update -y
apt upgrade -y
apt install -y wget zip unzip git jq awscli curl
export USER="chiefmikey"
export EMAIL="wolfemikl@gmail.com"
export REPO="raspy"
export GH_USER="chiefmikey"
export AWS_REGION="us-east-2"
export AWS_SECRET_ID="auth-raspy"
GH_PASSWORD=$(aws secretsmanager --region "${AWS_REGION}" get-secret-value --secret-id "${AWS_SECRET_ID}" | jq -r ".SecretString" | jq -r .\""${AWS_SECRET_ID}"\")
export GH_PASSWORD
sleep 10
git init
git config user.name ${USER}
git config user.email ${EMAIL}
git remote add origin https://${USER}:"${GH_PASSWORD}"@github.com/${GH_USER}/${REPO}.git
git fetch --prune
git checkout main
git reset --hard origin/main
chmod -R +x scripts
chown -R raspy:root /home/raspy
git commit -am "status(server): initialized ${CURRENT_DATE}"
git push origin main
