# sonarqube-for-ubuntu16.04
A shell script for installing sonarqube7.3 with ubuntu16.04

1. Execute install-java-postgres.sh  with a root user
2. change password from postgres user and execute config-postgres.sh  with it
3. Change to root user and execute  install-sonarqube.sh  
4. Execute update-sonar-service.sh

sudo passwd root => change password for user root

sudo systemctly status sonar => check status of sonar
