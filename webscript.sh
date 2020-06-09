#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1.12
systemctl start nginx.service
systemctl enable nginx.service
sudo yum install git -y
git clone "https://github.com/adi4fab/staticwebsite.git"
cd staticwebsite
cp index.html /usr/share/nginx/html
