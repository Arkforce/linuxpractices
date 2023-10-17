#!/bin/bash
apt update -y
apt upgrade -y
apt install git -y

cd /home/ubuntu/
#TOKEN='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'
#git clone https://$TOKEN@github.com/Arkforce/blog-project.git
git clone https://github.com/khodzhaev/azizbek.git

cd /home/ubuntu/azizbek
apt install python3-pip -y
pip3 install -r requirements.txt
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
