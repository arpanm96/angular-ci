#!/bin/bash
echo Git Status
git status
echo Currently inside $(System.DefaultWorkingDirectory)
sourcePath="$(System.DefaultWorkingDirectory)/TestApp/dist/test-app"
echo Adding $sourcePath to git
git add $sourcePath
branch=gh-pages
echo Pushing $sourcePath to $branch
git push origin $branch