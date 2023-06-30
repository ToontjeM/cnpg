#!/bin/bash
. ./config.sh

rm -f cluster-example.yaml
#wget https://cloudnative-pg.io/docs/1.15.0/samples/cluster-example.yaml

echo "Create new cluster manifest"
#printf "${green}cp cluster-example-template.yaml cluster-example.yaml${reset}\n"
#printf "${green}cat cluster-example.yaml${reset}\n"
read
cp cluster-example-template.yaml cluster-example.yaml
cat cluster-example.yaml
