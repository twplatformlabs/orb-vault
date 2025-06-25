#!/bin/bash
set -eo pipefail

echo "VAULT_ADDR ${VAULT_ADDR}"
echo "VAULT_NAMESPACE ${VAULT_NAMESPACE}"
echo "VAULT_ROLE_ID ${VAULT_ROLE_ID:0:7}"
echo "VAULT_SECRET_ID ${VAULT_SECRET_ID:0:7}"

VAULT_TOKEN=$(vault write -namespace="$VAULT_NAMESPACE" -format=json \
                           auth/approle/login role_id="$VAULT_ROLE_ID" secret_id="$VAULT_SECRET_ID" | jq -r .auth.client_token)
echo "export VAULT_TOKEN=$VAULT_TOKEN" >> "$BASH_ENV"
