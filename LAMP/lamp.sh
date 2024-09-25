#!/bin/bash
echo "LAMP Stack setup"
sudo apt install lamp-server^ phpmyadmin -y
sudo systemctl disable mysql

