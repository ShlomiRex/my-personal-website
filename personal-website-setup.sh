#!/bin/bash
# If you forgot the mysql root password / want to access any user, you need to be in root user mode: $ sudo -i. Then, type $ sudo mysql. Then, change password with $ ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new-password';
sudo apt install mysql-server apache2 nodejs npm phpmyadmin
cd ~
mkdir Downloads
cd Downloads
git clone https://github.com/ShlomiRex/my-personal-website
sudo chown -R shlomi /var/www #IMPORTANT !! Own the directory with username 'shlomi'
sudo cp my-personal-website/ /var/www/html -R
sudo ln -s /usr/share/phpmyadmin /var/www/phpmyadmin #PHPMYADMIN is avilable at localhost/phpmyadmin with username 
cd /var/www/html
sudo npm install
# Next, you need to remove Indexs options from Apache. If apache is up, and the server (nodejs) is not running, apache will display all the files in /var/www/html ! The clients can read backend files. So, remove the 'Indexs' option in any directory in the /etc/apache2/apache2.conf file.
# More info at: https://cwiki.apache.org/confluence/display/HTTPD/DirectoryListings

sudo npm install -g mongo-express # Like phpMyAdmin but for MongoDB. To run it, type: $ mongo-express -u user -p password -d database
# For more information on mongo-express: https://github.com/mongo-express/mongo-express

