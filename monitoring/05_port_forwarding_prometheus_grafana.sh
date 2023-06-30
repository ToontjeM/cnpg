#!/bin/bash
. ../config.sh

echo "Configuring port-forwarding for port 9090 (Prometeus) and 3000 (Grafana) using:"
printf "${green}kubectl port-forward svc/prometheus-community-kube-prometheus 9090${reset}\n"
printf "${green}kubectl port-forward svc/prometheus-community-grafana 3000:80${reset}\n"
read
# Prometheus port forwarding
kubectl port-forward svc/prometheus-community-kube-prometheus 9090 &

# Grafana port forwarding
kubectl port-forward svc/prometheus-community-grafana 3000:80 &
