#create user
useradd -m -s /bin/bash -U piadminops

#allow remote user passwordless sudo
echo 'piadminops ALL=(ALL:ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

#create .ssh directory
mkdir -p "/home/piadminops/.ssh"

#copy key from default user home directory to remote user home directory
cp /tmp/authorized_keys /home/piadminops/.ssh/authorized_keys
chown piadminops /home/piadminops/.ssh/authorized_keys
chmod 0600 /home/piadminops/.ssh/authorized_keys
rm /tmp/authorized_keys -f

#copy key from default user home directory to remote user home directory
cp /tmp/authorized_keys /home/piadminops/vault_pass.txt
chown piadminops /home/piadminops/vault_pass.txt
chmod 0600 /home/piadminops/vault_pass.txt
rm /tmp/vault_pass.txt -f
