#!/bin/sh -e

git checkout package
git merge master
npm run prepublish
git add esm/* lib/* -f
git commit -a -m "Deploy"
git push origin package
