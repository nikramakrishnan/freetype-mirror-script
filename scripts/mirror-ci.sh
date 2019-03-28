#!/bin/bash
set -exo pipefail

git clone --bare https://git.savannah.gnu.org/git/freetype/freetype2.git freetype2
cd freetype2

git remote add origin-gh https://${GH_ACCESS_TOKEN}@github.com/nikramakrishnan/freetype2-mirror.git > /dev/null 2>&1
git push --mirror --set-upstream origin-gh
