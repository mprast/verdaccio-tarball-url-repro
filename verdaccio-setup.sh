#! /usr/bin/env bash
set -o errexit 

sed -i "s/    publish: \$authenticated/    publish: \$all/g" $HOME/.config/verdaccio/config.yaml
echo "...Finished!"
