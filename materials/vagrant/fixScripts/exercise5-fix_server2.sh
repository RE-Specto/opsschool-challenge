#!/bin/bash
#add fix to exercise5-server2 here
cp /vagrant/.vagrant/machines/server1/virtualbox/private_key /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant .ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa
cat <<EOT>>/home/vagrant/.ssh/config
Host *
    StrictHostKeyChecking no
EOT
cat <<EOT>>/root/.ssh/config
Host *
    StrictHostKeyChecking no
EOT
scp -i /home/vagrant/.ssh/id_rsa /vagrant/.vagrant/machines/server2/virtualbox/private_key  vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa
ssh -i /home/vagrant/.ssh/id_rsa  vagrant@192.168.100.10 "sudo chown vagrant:vagrant .ssh/id_rsa && sudo chmod 600 /home/vagrant/.ssh/id_rsa"
#ssh -o "StrictHostKeyChecking no" server1 hostname
