#!/bin/sh

cd vars
rm machine_vars.yml
ln -s `hostname`.yml machine_vars.yml
cd ..

ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -K
