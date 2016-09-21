set -e

curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh

# zhaoic qiniu download
# mkdir $HOME/.meteor-install-tmp
# curl --progress-bar --insecure  https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/1.3.1/meteor-bootstrap-os.linux.x86_64.tar.gz | tar -xzf - -C "$HOME/.meteor-install-tmp" -o
# curl -sL http://7xs3j2.com1.z0.glb.clouddn.com/meteor131_install_qiniu.sh | sed s/--progress-bar/-sL/g | /bin/sh
