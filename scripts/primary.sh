#!/bin/bash

export primary=`kubectl get pod -o=jsonpath="{range .items[*]}{.metadata.name}{'\t'}{.status.podIP}{'\t'}{.metadata.labels.role}{'\n'}" | grep cluster-example | grep primary | awk '{print $1}'`
printf "${yellow}Primary instance: ${red}${primary}${reset}\n"
