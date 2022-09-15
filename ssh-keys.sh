for server in `cat server.txt`;  
do  
    sshpass -p "qwerty123" ssh-copy-id -i ~/.ssh/id_rsa.pub devops@$server  
done