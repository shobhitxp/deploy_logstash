#!/bin/bash

if ! command -v ansible >/dev/null; then
	echo "Ansible not found - Installing"
	sudo apt-get update
	sudo apt-get install software-properties-common  --assume-yes 2> /dev/null
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1; do
  	sleep 1
	done
	sudo apt-get install ansible  --assume-yes 2> /dev/null
else
	echo "Ansible found - no installation needed"
fi
