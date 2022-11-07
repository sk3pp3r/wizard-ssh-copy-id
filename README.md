# wizard-ssh-copy-id
## Automating ssh-copy-id Answer “Yes” and copy the password by using sshpass 

Here sample way how to execute `ssh-copy-id` with password by using `sshpass` and answering`YES` for the first time connection

```
# install sshpass 
sudo apt-get install sshpass -y # ubuntu
sudo yum install -y sshpass # centos

TEMP_PASS="MySecurePassword" # The password to pass over ssh
USER="root" # The user we going to use
REMOTE="IP_or_FQDN" # The IP of remote machine

echo "yes \n" | sshpass -p $TEMP_PASS ssh-copy-id -o StrictHostKeyChecking=no $USER@$REMOTE
```

You need to mark the file as executable: `chmod +x auto-ssh.sh`
***
### References
*  [ssh](https://www.ssh.com/ssh/command)
* [ ssh-copy-id](https://www.ssh.com/ssh/copy-id)
* [sshpass](https://linux.die.net/man/1/sshpass)

#
<a href="https://www.buymeacoffee.com/haim_cohen" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
