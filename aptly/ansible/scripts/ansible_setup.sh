#!/bin/bash
apt-get update
apt-get --quiet --assume-yes install sshpass
apt-get --quiet --assume-yes install python-dev
apt-get --quiet --assume-yes install python-pip
apt-get --quiet --assume-yes install python-keyczar
yes | pip install paramiko
yes | pip install pyYAML
yes | pip install jinja2
yes | pip install ansible
