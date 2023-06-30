#!/bin/bash
. ./config.sh
echo "Performing rolling upgrade from Postgres 14.2 to 14.5 using:"
printf "${green}kubectl apply -f cluster-example-upgrade.yaml${reset}\n"
cat cluster-example-upgrade.yaml
read
kubectl apply -f cluster-example-upgrade.yaml
