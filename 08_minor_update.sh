#!/bin/bash
. config/config.sh

less config/imagecatalog_update.yml

kubectl apply -f config/imagecatalog_update.yml