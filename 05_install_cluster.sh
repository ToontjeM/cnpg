#!/bin/bash

. ./config.sh

echo "Creating minio (S3) secrets and installing cluster using:"
printf "${green}kubectl create secret generic minio-creds --from-literal=MINIO_ACCESS_KEY=admin --from-literal=MINIO_SECRET_KEY=password${reset}\n"
printf "${green}kubectl apply -f cluster-example.yaml${reset}\n"
read
#MinIO secrets
kubectl create secret generic minio-creds \
  --from-literal=MINIO_ACCESS_KEY=admin \
  --from-literal=MINIO_SECRET_KEY=password
kubectl apply -f cluster-example.yaml
