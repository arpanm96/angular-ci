#!/bin/bash
echo Setting git configuration
git config --global user.email "arpan.majumder54@gmail.com"
git config --global user.name "Arpan Majumder"

echo Git Status
git status
git fetch

# path=$build.sourcesDirectory
# echo Currently inside $path

path="TestApp/dist/test-app/"
mkdir deploy && cp -rf $path deploy/
echo Adding deploy/ to git
git add deploy/

git commit -m "Update application"

branch=gh-pages
echo Pushing $path to $branch
git push origin $branch