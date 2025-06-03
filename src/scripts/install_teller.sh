#!/bin/bash
set -e pipefail

echo "TELLER_VERSION $TELLER_VERSION"

curl -sSLO "https://github.com/tellerops/teller/releases/download/v${TELLER_VERSION}/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz"
sudo tar -xvf teller_1.5.6_Linux_x86_64.tar.gz
sudo mv teller /usr/local/bin/.
rm -rf teller
