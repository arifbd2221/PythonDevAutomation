#!/bin/sh

echo "Starting ...";

python3 create.py $1

cd /home/mehedi/Desktop/mydjango-projects
django-admin startproject $1
cd /home/mehedi/Desktop/mydjango-projects/$1

git init
git remote add origin https://github.com/mehedi61/$1.git
touch README.md
git add .
git commit -m "Initial commit"
git push -u origin master

echo "Done!";
