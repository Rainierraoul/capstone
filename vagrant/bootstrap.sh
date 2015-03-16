#!/usr/bin/env bash

apt-get update
apt-get install -y git g++

#Java 8
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u40-b25/jdk-8u40-linux-i586.tar.gz"
tar xzf jdk-8u40-linux-i586.tar.gz
echo export JAVA_HOME=/opt/jdk1.8.0_40 >> /home/vagrant/.bashrc
echo export JRE_HOME=/opt/jdk1.8.0_40/jre >> /home/vagrant/.bashrc
echo export PATH=$PATH:/opt/jdk1.8.0_40/bin:/opt/jdk1.8.0_40/jre/bin >> /home/vagrant/.bashrc

#guest additions for virtural box
#wget http://download.virtualbox.org/virtualbox/4.3.8/VBoxGuestAdditions_4.3.8.iso
#sudo mkdir /media/VBoxGuestAdditions
#sudo mount -o loop,ro VBoxGuestAdditions_4.3.8.iso /media/VBoxGuestAdditions
#sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#rm VBoxGuestAdditions_4.3.8.iso
#sudo umount /media/VBoxGuestAdditions
#sudo rmdir /media/VBoxGuestAdditions