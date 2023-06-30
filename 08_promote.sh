#!/bin/bash
. ./config.sh
echo "Promoting replica to primary using:"
printf "${green}kubectl-cnpg promote cluster-example cluster-example-2${reset}\n"
read
kubectl-cnpg promote cluster-example cluster-example-2
