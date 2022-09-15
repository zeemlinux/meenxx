for server in `cat server.txt`;  
do  
    sshpass -p "passwd" ssh-copy-id -i ~/.ssh/id_rsa.pub devops@$server  
done
