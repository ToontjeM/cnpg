#!/bin/bash
. ./config.sh
echo "Creating table 'test' and inserting 1000 records using:"
printf "${green}kubectl exec -i cluster-example-1 -- psql < sqltest.sql${reset}\n"

read
kubectl exec -i cluster-example-1 -- psql < sqltest.sql

# Worldcup sample ata
#cd worldcup_data
#./create_players.sh
#cd ..
