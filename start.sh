#! /bin/bash
yum update -y
amazon-linux-extras install nginx1 -y 
yum install git -y
systemctl start nginx

cd /usr/share/nginx/html

git clone https://github.com/ethantechtorial/coffee-shop.git

sudo chmod -R 777 /usr/share/nginx/html
rm index.html
cp -R ./coffee-shop/. .
systemctl restart nginx
systemctl enable nginx