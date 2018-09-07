#!/bin/sh
sudo cat sonar > /etc/init.d/sonar
sudo ln -s /opt/sonarqube-7.3/bin/linux-x86-32/sonar.sh /usr/bin/sonar
sudo chmod 755 /etc/init.d/sonar
sudo update-rc.d sonar defaults
sudo systemctl enable sonar
