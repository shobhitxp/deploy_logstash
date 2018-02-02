#Ansibe Role for creation of the Rackspace Network.
 All the variables are defined in the default template can be changes as per the requirements.

Before Running this role we should ensure that the rax module pre-requiste have been meet in the Operating system.
Detail of rax module can be found at link Detail of rax module can be found at link 
http://docs.ansible.com/ansible/latest/guide_rax.html

Sample playbook to create a newtwork:

---
- name: Create Dynamic Network servers
  hosts: localhost
  connection: local
  gather_facts: False
  roles:
  - iac-rackspace_cloud_network

The default variable can be changed by passing extra-var while running the playbook. Example is mention below
 ansible-playbook test.yml --extra-var "network_name=test1"
