#!/bin/bash
wget -P /tmp/ https://dl.bintray.com/mitchellh/vagrant/vagrant_1.4.3_i686.deb
dpkg -i /tmp/vagrant_1.4.3_i686.deb
vagrant box add base http://files.vagrantup.com/precise32.box
