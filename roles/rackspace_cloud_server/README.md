#Ansibe Role for creation of the Rackspace Network.
 All the variables are defined in the default template can be changes as per the requirements.

Before Running this role we should ensure that the rax module pre-requiste have been meet in the Operating system.
Detail of rax module can be found at link Detail of rax module can be found at link 
http://docs.ansible.com/ansible/latest/guide_rax.html

List of OS Flavours are mentioned in link below 
https://developer.rackspace.com/docs/cloud-servers/v2/getting-started/create-server/listing-flavors-nova/

Sample Playbook:

---
- name: Create Dynamic Inventory servers
  hosts: localhost
  connection: local
  gather_facts: False
  roles:
  - iac-rackspace_cloud_server


You can change the default variable in the role via passing as extra-var or from ansible tower 

ansible-playbook test.yml --extra-var "Name=test1" # This will create a server test11 in rackspace with taking all default variable but name as test1
