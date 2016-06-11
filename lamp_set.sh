#!/usr/bin/bash
yum -y install epel-release
yum -y install httpd
systemctl enable httpd.service
systemctl start httpd.service
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
yum -y install php php-mysql
systemctl restart httpd.service
sudo yum -y install php-fpm
yum -y install phpMyAdmin
