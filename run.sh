#!/bin/sh

ln -nsf "`hostname`.yml" vars/machine_vars.yml

ansible-playbook playbook.yml -K "$@"
