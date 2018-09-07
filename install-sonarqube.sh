#!/bin/bash
sonarPassword=Password
mkdir /tmp/sonarqueb
cd /tmp/sonarquebe
pwd
sudo wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-7.3.zip
sudo apt-get -y install unzip
sudo unzip sonarqube-7.3.zip -d /opt
#sudo nano /opt/sonarqube-7.3/conf/sonar.properties
sudo groupadd sonar
sudo useradd -c "Sonar System User" -d /opt/sonarqube -g sonar -s /bin/bash sonar
sudo chown -R sonar:sonar /opt/sonarqube-7.3
sudo chmod 775 /opt/sonarqube-7.3
#replace
sudo perl -pi -e 's/#sonar.jdbc.username=/sonar.jdbc.username=sonar/g' /opt/sonarqube-7.3/conf/sonar.properties
sudo perl -pi -e 's/#sonar.jdbc.password=/sonar.jdbc.password='"$sonarPassword"'/g' /opt/sonarqube-7.3/conf/sonar.properties
sudo perl -pi -e 's/#sonar.jdbc.url=jdbc:postgresql/sonar.jdbc.url=jdbc:postgresql/g' /opt/sonarqube-7.3/conf/sonar.properties
sudo cat sonar.service > /etc/systemd/system/sonar.service
sudo systemctl daemon-reload
sudo systemctl start sonar
