#!/usr/bin/env sh
set -e
npm install
npm run build
cd dist
echo 'casualconsulting.de' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:ProdIsMyDev/CasualConsulting.git master:gh-pages
cd -
