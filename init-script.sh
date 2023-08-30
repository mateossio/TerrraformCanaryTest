#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
curl https://i.imgur.com/ACsUXw2.png > /var/www/html/g1.png
curl https://i.imgur.com/jyrwjhk.png > /var/www/html/g0.png
curl https://i.imgur.com/FW2rzfI.png > /var/www/html/b1.png
curl https://i.imgur.com/eKcwNs5.png > /var/www/html/b0.png
touch /var/www/html/index.html
echo "<h1>Refresh to test Redirection</h1><br><img src="${file_content}.png" alt="${file_content} instance">" > /var/www/html/index.html