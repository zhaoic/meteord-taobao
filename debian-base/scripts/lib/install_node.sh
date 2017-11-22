#!/bin/bash
set -e
#NODE_VERSION=0.10.44
NODE_VERSION=8.4.0
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
# curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
curl -O -L http://npm.taobao.org/mirrors/node/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

echo "=> [**]Install npm@3"
npm config set registry https://registry.npm.taobao.org
npm config set disturl https://npm.taobao.org/dist
npm install --global npm@3
echo "=> [**]Install npm@3 done"
