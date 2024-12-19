# Debian for Winny

## Getting started

1. Install Debian bookworm.
2. Install `ansible` and `make`.
3. Run `make` to apply this configuration.  Try `make CHECK=1` to run Ansible
   in check mode.

Default target will install necessary ansible roles then run the playbook.

## TODO

1. Add another playbook for managing user-level settings such as enabling
   user level `wireplumber.service`.
2. Create a /etc/systemd/sleep.conf.d/ file using variables/defaults.
