#!/usr/bin/env bash

cd `dirname "$(readlink -f "$0")"`
mvn clean install
rm -rf tmp-lavagna-site
mv target/site tmp-lavagna-site
git stash
git checkout gh-pages
