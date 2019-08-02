#!/bin/bash
echo Git Status
git status
git fetch
path=$(build.sourcesDirectory)
echo Currently inside $path
sourcePath="$path/TestApp/dist/test-app"
echo Adding $sourcePath to git
git add $sourcePath
git commit -m "Update application"
branch=gh-pages
echo Pushing $sourcePath to $branch
git push origin $branch