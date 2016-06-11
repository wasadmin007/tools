#!/usr/bin/bash
yum -y install epel-release
yum -y install httpd
systemctl enable httpd.service
systemctl start httpd.service
systemctl enable mariadb.service
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
yum -y install php php-mysql
systemctl restart httpd.service
sudo yum -y install php-fpm
yum -y install phpMyAdmin
wget http://pear.php.net/go-pear.phar
php go-pear.phar
yum -y install php-mcrypt
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
cp -r conf.d/* /etc/httpd/conf.d/* 
cp httpd.conf  /etc/httpd/conf/httpd.conf
