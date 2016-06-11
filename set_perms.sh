sudo chown apache:apache -R /var/www/html/jindru.com 
cd /var/www/html/jindru.com
 
# File permissions, recursive
find . -type f -exec chmod 0644 {} \;
 
# Dir permissions, recursive
find . -type d -exec chmod 0755 {} \;
 
# SELinux serve files off Apache, resursive
sudo chcon -t httpd_sys_content_t /var/www/html/jindru.com -R
 
# Allow write only to specific dirs
sudo chcon -t httpd_sys_rw_content_t /var/www/html/jindru.com -R
sudo chcon -t httpd_sys_rw_content_t /var/www/html/jindru.com -R

