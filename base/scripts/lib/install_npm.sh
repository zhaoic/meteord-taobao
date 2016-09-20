#!/bin/bash
set -e

echo "=> [**------]Install npm scripts"
cd /opt/meteord/npm_scripts/
npm install -g --unsafe-perm
echo "=> [**------]Install npm scripts done"