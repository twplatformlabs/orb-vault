#!/bin/bash
set -e pipefail


echo "VAULT_VERSION $VAULT_VERSION"

# install linux/intel arch
curl -sSfLo vault.zip "https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip"
sudo unzip -od "/usr/local/bin" vault.zip && rm vault.zip
