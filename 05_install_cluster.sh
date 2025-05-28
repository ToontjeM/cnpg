#!/bin/bash

. config/config.sh

printf "${green}kubectl create secret generic minio-creds --from-literal=MINIO_ACCESS_KEY=admin --from-literal=MINIO_SECRET_KEY=password${reset}\n"

#MinIO secrets
kubectl create secret generic minio-creds \
  --from-literal=MINIO_ACCESS_KEY=admin \
  --from-literal=MINIO_SECRET_KEY=password

printf "${green}kubectl apply -f cluster-example.yaml${reset}\n"

kubectl apply -f config/cluster-example.yaml
