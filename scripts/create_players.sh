#!/bin/bash
. config/config.sh
. scripts/primary.sh

kubectl exec -it ${primary} -- psql < scripts/test.sql
kubectl exec -it ${primary} -- psql < scripts/players_schema.sql
kubectl exec -it ${primary} -- psql < scripts/players.sql
