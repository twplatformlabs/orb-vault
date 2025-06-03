#!/bin/bash
set -e pipefail

echo "TELLER_VERSION $VAULT_VERSION"

curl -sSfLo teller.zip "https://github.com/tellerops/teller/releases/download/v${TELLER_VERSION}/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz"
sudo unzip -od "/usr/local/bin" teller.zip && rm teller.zip
