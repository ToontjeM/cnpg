#!/bin/bash
. config/config.sh
. scripts/primary.sh

echo $primary

printf "${green}kubectl exec -i ${primary} -- psql < sqltest.sql${reset}\n"

kubectl exec -i ${primary} -- psql < scripts/sqltest.sql

# Worldcup sample ata
. scripts/create_players.sh
