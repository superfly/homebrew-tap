#!/bin/bash

set -ex

mkdir -p ./tmp

curl "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/darwin-x64" > tmp/manifest.json
URL=$(node -p "require('./tmp/manifest.json').gz")
SHA=$(node -p "require('./tmp/manifest.json').sha256gz")
VERSION=$(node -p "require('./tmp/manifest.json').version")
CHANNEL=$(node -p "require('./tmp/manifest.json').channel")

echo "Updating $VERSION on $CHANNEL"
echo "  URL: $URL"
echo "  SHA: $SHA"

sed -i "s~url \".*\"~url \"${URL}\"~" "Formula/fly.rb"
sed -i "s~sha256 \".*\"~sha256 \"${SHA}\"~" "Formula/fly.rb"

if [[ -n $(git status -s) ]]; then
  git add Formula/fly.rb

  sh -c "git config --global user.name 'Flybot' \
        && git config --global user.email 'bot@fly.io' \
        && git commit -m 'fly v$VERSION' \
        && git push -u origin HEAD"
else 
  echo 'latest version already released, done'
fi
