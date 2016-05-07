#!/bin/bash

# this is the biggest hack ever

set -e

indoc -c indoc.json

cd docs

git init

git add .
git commit -m "Deploy to GitHub Pages"

echo '[credential]' >> .git/config
echo '  helper = store' >> .git/config

git push --force --quiet https://github.com/asv-engine/asv-engine.git master:gh-pages
