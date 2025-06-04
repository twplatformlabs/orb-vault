#!/bin/bash
set -eo pipefail

VAULT_TOKEN=$(vault write -namespace=$VAULT_NAMESPACE -format=json auth/approle/login \
  role_id="$VAULT_ROLE_ID" secret_id="$VAULT_SECRET_ID" | jq -r .auth.client_token)
echo "export VAULT_TOKEN=$VAULT_TOKEN" >> "$BASH_ENV"
