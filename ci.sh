#!/bin/bash

echo "----------> making a sourcecode directory"
mkdir sourcecode

echo "----------> change directory to sourcecode"
cd sourcecode

echo "----------> making a profile-hemanth directory"
mkdir profile-hemanth

echo "----------> change directory to profile-hemanth"
cd profile-hemanth

echo "# Hemanth Profile" >> README.md

echo "----------> copying files from local to specied git floder"
cp -r "/Users/rushi/Downloads/hemanth-profile-1" "/Users/rushi/Downloads/sourcecode/profile-hemanth/"

echo "----------> initializing git"
git init

echo "----------> add hemanth-profile-1 to git trace"
git add hemanth-profile-1

echo "----------> commiting the changes as this is my profile"
git commit -m "this is my profile"

echo "----------> change the git head to main branch"
git branch -M main

echo "----------> adding the remote origin to github url"
git remote add origin git@github.com:moolirushikeshavareddy/profile.git

echo "----------> pushing the changes to github"
git push -u origin main
