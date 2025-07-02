<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>orb-vault</h1>
  <h3>Hashi Vault for pipeline secrets management</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/orb-vault"><img src="https://circleci.com/gh/twplatformlabs/orb-vault.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
</div>
<br />

See [orb registry](https://circleci.com/developer/orbs/orb/twdps/vault) for detailed usage examples

Available options include:

  **Commands**
  - approle-auth. Generate VAULT_TOKEN env from VAULT_ADDR, VAULT_NAMESPACE, VAULT_ROLE_ID, VAULT_SECRET_ID (context env)
  - env. Set workflow BASH_ENV from teller file
  - tpl. Populate local file template from ENV values
  - install. Install Vault, Teller to executors that do not already contain
  - write-to-file. Write Vault field value to local file _(in development)
  - auth_vault. **deprecated** Use approle-auth
  - inject-secrets. **deprecated** Use tpl
