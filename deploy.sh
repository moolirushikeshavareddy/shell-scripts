#!/bin/bash

echo "----------> change to root user"
sudo su -

echo "----------> auto update the os"
yum update -y

echo "----------> install apache automatic"
yum install httpd -y

echo "----------> start apache" 
systemctl start httpd

echo "----------> enable apache"
systemctl enable httpd
 
echo "----------> make a directory static-webapplication"
mkdir static-webapplication

echo "----------> change directory to static-webapplication"
cd static-webapplication

echo "----------> copy the repos from s3 to apache"
aws s3 cp s3://deploy-git-clone-profile/profile.zip .

echo "----------> unzip the profile.zip"
unzip profile.zip

echo "----------> copy the index.html file to /var/www/html/ or /usr/share/httpd/noindex/"    
cp -r profile/hemanth-profile-1/  /usr/share/httpd/noindex/
