rm -rf output
git checkout source
nanoc3 co
git checkout master
cp -R output/* .
git add .
git commit -a -m "Updated site on `date`"
git push github master
git checkout source