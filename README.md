This prroject install logstash.

To deploy logstash to Rackspace, the following are required:
  1. A Rackspace cloud account
  2. A 'rax_creds' file placed at `assets/secrets/rax_creds`
  3. SSH keys placed in `assets/secrets/ssh/`, including:
  4. Private key for server connections `id_rsa`
  5. Public key for server connections  `id_rsa.pub`
  6. Key for Github authentication `id_rsa_github`
  7. You should place the old logs files in logstash repostiory else you can put it later in /opt/logstash_oldlogs

To deploy, run `sh scripts/createlogstash` from the project root.
