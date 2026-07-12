#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Terraform Auto Scaling Lab</h1><h2>$(hostname)</h2>" > /var/www/html/index.html
