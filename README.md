lavagna-site
============
lavagna.io site



Develop:
========

>mvn stampo:serve

open browser at localhost:8080


Deploy:
=======
In the master branch, run the script copy-to-gh-page.sh .
It will copy compile and copy the website to the gh-pages branch, check that everything is ok, add the files to git, commit and push the branch.
