#!/bin/bash
echo Setting git configuration
git config --global user.email "arpan.majumder54@gmail.com"
git config --global user.name "Arpan Majumder"

echo Git Status
git fetch

# path=$build.sourcesDirectory
# echo Currently inside $path

branch=gh-pages
git checkout -t -b $branch origin/$branch

path="TestApp/"
ls && mkdir deploy && cp -rf $path deploy/ && ls deploy/
git status
echo Adding deploy/ to git
git add deploy/

git commit -m "Update application"

echo Pushing $path to $branch
git push origin $branch