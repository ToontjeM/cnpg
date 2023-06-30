#!/bin/bash
. ../config.sh
echo "Installing CNPG rules into Prometeus using:"
printf "${green}kubectl apply -f https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/main/docs/src/samples/monitoring/cnpg-prometheusrule.yaml${reset}\n"
read
kubectl apply -f https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/main/docs/src/samples/monitoring/cnpg-prometheusrule.yaml
kubectl get prometheusrules

