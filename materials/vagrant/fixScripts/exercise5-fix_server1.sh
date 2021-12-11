#!/bin/bash
#add fix to exercise5-server1 here
cat <<EOT>>/home/vagrant/.ssh/config
Host *
    StrictHostKeyChecking no
EOT
cat <<EOT>>/root/.ssh/config
Host *
    StrictHostKeyChecking no
EOT
