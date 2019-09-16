#!/bin/bash
#add fix to exercise5-server1 here
su - vagrant -c "mkdir -p /home/vagrant/.ssh && echo \"Host *\" > ~/.ssh/config && echo \" StrictHostKeyChecking no\" >> ~/.ssh/config"
su - vagrant -c "ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -C '' -N ''"

