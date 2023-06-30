#!/bin/bash
. ./config.sh

echo "Installing plug-in using:"

printf "${green}curl -sSfL https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh |  sh -s -- -b /usr/local/bin${reset}\n"
read

curl -sSfL \
  https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh | \
  sh -s -- -b /usr/local/bin

