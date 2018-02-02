#copy private key
cp /vagrant/assets/secrets/ssh/id_rsa ~/.ssh/id_rsa

#set permissions on private key
chmod 0600 ~/.ssh/id_rsa
