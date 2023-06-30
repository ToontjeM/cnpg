#!/bin/bash
. ./config.sh
echo "Check if operator is installed using:"
printf "${green}kubectl get deploy -n cnpg-system cnpg-controller-manager${reset}\n"
read
kubectl get deploy -n cnpg-system cnpg-controller-manager -o wide

