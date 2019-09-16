#!/bin/bash
#add fix to exercise5-server2 here
su - vagrant -c "mkdir -p /home/vagrant/.ssh && echo \"Host *\" > ~/.ssh/config && echo \" StrictHostKeyChecking no\" >> ~/.ssh/config"
su - vagrant -c "ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -C '' -N ''"
apt-get install sshpass
su - vagrant -c "sshpass -p 'vagrant' scp vagrant@192.168.100.10:~/.ssh/id_rsa.pub ~/id_rsa.pub.server1 && cat ~/id_rsa.pub.server1 >> ~/.ssh/authorized_keys && rm ~/id_rsa.pub.server1"
