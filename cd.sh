#!/bin/bash

echo "----------> change directory to sourcecode"
cd sourcecode

echo "----------> make a directory git-clone-repos"
mkdir git-clone-repos

echo "----------> change directory to git-clone-repos"
cd git-clone-repos

echo "----------> cloning the repos to git-clone-repos directory"
git clone git@github.com:moolirushikeshavareddy/profile.git
