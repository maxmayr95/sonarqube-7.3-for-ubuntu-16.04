#!/bin/bash
sonarPassword=Password
#install java
sudo sh -c "apt update && yes | apt install openjdk-8-jdk && java -version"
#install postgres 10
sudo wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo sh -c "yes | apt-get install postgresql postgresql-contrib"
sudo chmod 777 /var/log/postgresql/postgresql-10-main.log
sudo systemctl start postgresql.service
