#!/bin/bash
sudo yum install -y epel-release -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello-World" > /var/html/index.html