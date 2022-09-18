#!/usr/bin/env bash

source config.sh

./convert.sh $1 $2 $3

sudo chown ${USER}:${USER} dist

remote=$(git remote get-url origin)
cd "$OUTPUTPATH" || exit

rm -rf .git

git init

git add .

git commit -m "updating github pages"

git branch gh-pages

git remote add origin "$remote"

git push -f origin gh-pages
