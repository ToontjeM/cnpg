#!/bin/bash
. ../config.sh

echo "Adding Prometeus community repo using:"
printf "${green}helm repo add prometheus-community https://prometheus-community.github.io/helm-charts${reset}\n"
read

helm repo add prometheus-community \
  https://prometheus-community.github.io/helm-charts

