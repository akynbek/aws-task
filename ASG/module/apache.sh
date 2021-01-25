#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chmod 777 /var/www/html
sudo echo "Hello-World" > /var/www/html/index.html