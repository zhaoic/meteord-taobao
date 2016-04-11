set -e

# curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh

# zhaoic qiniu download
curl --progress-bar --insecure --fail https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/1.3/meteor-bootstrap-os.linux.x86_64.tar.gz | tar -xzf - -C "$HOME/.meteor-install-tmp" -o
