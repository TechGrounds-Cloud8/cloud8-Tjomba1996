#!/bin/bash
sudo su
apt update
apt install apache2 -y
systemctl enable apache2
systemctl restart apache2
