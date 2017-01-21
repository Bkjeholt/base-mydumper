#!/bin/bash -f

echo "------------------------------------------------------------------------"
echo "-- Start execution of mysql-backup-deamon "
echo "-- Mysql server: ${MYSQL_IP_ADDR}:${MYSQL_PORT_NO} "
echo "------------------------------------------------------------------------"
ls -lR /usr/local/bin

/usr/local/bin/init-backup.sh

while [ : ]
do
    /usr/local/bin/execute-backup.sh  
    /usr/local/bin/post-backup.sh
    
    sleep ${MYSQL_BACKUP_INTERVALL}h
done
