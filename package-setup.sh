#! /usr/bin/env bash
set -o errexit

yarn config set npmRegistryServer "http://localhost:4873"
cd packageB
sed -i 's/  "version": "0.0.2"/  "version": "0.0.1"/g' package.json #makes this script idempotent
yarn npm publish 
sed -i 's/  "version": "0.0.1"/  "version": "0.0.2"/g' package.json #roll the version of packageB so 'yarn install' doesn't just pick up the workspace copy
cd ..
echo "...finished!"
