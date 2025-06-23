#!/bin/bash
set -e pipefail

echo "TELLER_VERSION $TELLER_VERSION"

curl -SLO "https://github.com/tellerops/teller/releases/download/v${TELLER_VERSION}/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz"
sudo tar -xvf "teller_${TELLER_VERSION}_Linux_x86_64.tar.gz" teller
sudo mv teller /usr/local/bin/teller
rm "teller_${TELLER_VERSION}_Linux_x86_64.tar.gz"
