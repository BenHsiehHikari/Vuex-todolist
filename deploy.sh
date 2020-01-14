#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add *
git commit -m "first commit"
git remote add origin https://github.com/BenHsiehHikari/Vuex-todolist-practice.git
git push -u origin master

cd -