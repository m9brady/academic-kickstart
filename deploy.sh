#!/bin/zsh

# from https://discourse.gohugo.io/t/delete-public-folder-before-every-build/2468/6

echo 'deploying'
# push content changes to academic fork
git add -A
git commit -m 'update'
git push -u origin master

# build and push to gh.io repo
hugo
cd public
git add -A
git commit -m 'update'
git push origin master

# cleanup generated site
cd ..
find public -path public/.git -prune -o -exec rm -rf {} \; 2> /dev/null
echo 'deployment complete'

