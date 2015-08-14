#!/bin/bash
if [ ! -f /home/vagrant/.ssh/id_rsa ]; then 
				ssh-keygen -q -t rsa -f /home/vagrant/.ssh/id_rsa -N ""
				chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
				chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
				touch /home/vagrant/.ssh/authorized_keys
				chmod 600 /home/vagrant/.ssh/authorized_keys
				cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
fi
