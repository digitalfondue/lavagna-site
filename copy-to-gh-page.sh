#!/usr/bin/env bash

cd `dirname "$(readlink -f "$0")"`
mvn clean install
rm -rf tmp-lavagna-site
mv target/site tmp-lavagna-site
rm -rf target
git stash
git checkout gh-pages
rm -f CNAME
rm -rf download  
rm -rf images
rm -rf js
rm start.txt
rm -rf css
rm -rf help
rm -f index.html  
rm -rf roadmap  
rm stop.txt
mv tmp-lavagna-site/* .
rmdir tmp-lavagna-site
git add -A

