#!/bin/bash
. config/config.sh

less config/major_upgrade.yml
kubectl apply -f config/major_upgrade.yml

printf "${green}Once the upgrade is done, check data using:${reset}\n\n"
printf "${red} kubectl cnpg psql cluster-example -- -qAt -c 'SELECT version()' ${reset}\n\n"
printf "${red} kubectl cnpg psql cluster-example -- -qAt -c 'SELECT * FROM players LIMIT 25' ${reset}\n\n"