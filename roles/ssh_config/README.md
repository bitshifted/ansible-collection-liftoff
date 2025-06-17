# Ansible role ssh_config

Role intended to configure hardened SSH server. It also allows configuring a user to be used for bastion host.

## Variables

* `bastion_host` - enables target machine to serve as bastion host. Defaults to `false`
* `bastion_user` - username for user to be used for connecting to bastioon host. Defaults to `bastion`.

