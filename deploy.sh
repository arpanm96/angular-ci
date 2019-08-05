#!/bin/bash
echo Setting git configuration
git config --global user.email "arpan.majumder54@gmail.com"
git config --global user.name "Arpan Majumder"

echo Git Status
git fetch

branch=gh-pages
git checkout -t -b $branch origin/$branch
git remote -v && git branch && ls

path="TestApp/dist/test-app/"
git status

echo Copying files to main directory from $path
mv -f $path/* .

echo Adding $path to git
git add .

echo Added files to git
git status

git commit -m "Update application"

echo Pushing $path to $branch
git push -f origin $branch
