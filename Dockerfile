FROM quantumobject/docker-cacti
RUN mv /var/lib/mysql /var/lib/mysql.backup
RUN mkdir /var/lib/mysql
RUN mv /opt/cacti /opt/cacti.backup
RUN mkdir /opt/cacti
COPY run.sh /sbin/
RUN chmod 755 /sbin/run.sh
CMD ["/sbin/run.sh"]
