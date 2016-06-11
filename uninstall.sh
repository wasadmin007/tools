#!/usr/bin/bash
yum -y remove epel-release
yum -y remove httpd
systemctl disable httpd.service
systemctl stop httpd.service
yum -y remove mariadb-server mariadb
yum remove mariadb-libs-5.5.47-1.el7_2.x86_64
systemctl stop mariadb
mysql_secure_removeation
systemctl disable mariadb.service
yum -y remove php php-mysql
systemctl stop httpd.service
sudo yum -y remove php-fpm
yum -y remove phpMyAdmin
yum -y remove php-mcrypt
yum remove sqlite-3.7.17-8.el7.x86_64
yum -y remove php-gd-5.4.16-36.1.el7_2.1.x86_64 php-common-5.4.16-36.1.el7_2.1.x86_64 php-pdo-5.4.16-36.1.el7_2.1.x86_64 php-xml-5.4.16-36.1.el7_2.1.x86_64
yum -y remove php-tidy-5.4.16-4.el7.x86_64 php-bcmath-5.4.16-36.1.el7_2.1.x86_64 php-gd-5.4.16-36.1.el7_2.1.x86_64 php-common-5.4.16-36.1.el7_2.1.x86_64 php-cli-5.4.16-36.1.el7_2.1.x86_64 php-mbstring-5.4.16-36.1.el7_2.1.x86_64 php-process-5.4.16-36.1.el7_2.1.x86_64 php-php-gettext-1.0.11-12.el7.noarch php-xml-5.4.16-36.1.el7_2.1.x86_64 php-tcpdf-dejavu-sans-fonts-6.2.11-1.el7.noarch 
