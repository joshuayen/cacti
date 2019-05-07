 #!/bin/bash
 if [ ! -d "/var/lib/mysql/cacti" ]; then
    mv /var/lib/mysql.backup/* /var/lib/mysql/
 fi
 
 if [ ! -d "/opt/cacti/docs" ]; then
    mv /opt/cacti.backup/* /opt/cacti/
 fi
 
 /sbin/my_init
