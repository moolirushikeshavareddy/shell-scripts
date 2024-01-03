#!/bin/bash

echo "----------> change directory to sourcecode"
cd sourcecode

echo "----------> change directory to git-clone-repos"
cd git-clone-repos

echo "----------> make the repo as zip file"
zip -r profile.zip profile

echo "----------> copy the zip file to s3 bucket deploy-git-clone-profile"
aws s3 cp profile.zip s3://deploy-git-clone-profile/
