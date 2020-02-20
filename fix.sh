#! /usr/bin/env bash
sed -i "s/here.tgz/packageB-0.0.1.tgz/" /root/.config/verdaccio/storage/packageB/package.json
echo "...Finished!"
