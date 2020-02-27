#!/bin/bash
##############################################################################
# Automating ssh-copy-id Answer “Yes” and copy the password by using sshpass #
#  Haim Cohen                    Version 0.1                     27-Feb-2020 #
##############################################################################

# install sshpass 
sudo apt-get install sshpass -y # ubuntu
sudo yum install -y sshpass # centos

TEMP_PASS="MySecurePassword" # The password to pass over ssh
USER="root" # The user we going to use
REMOTE="IP_or_FQDN" # The IP of remote machine

echo "yes \n" | sshpass -p $TEMP_PASS ssh-copy-id -o StrictHostKeyChecking=no $USER@$REMOTE
