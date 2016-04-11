set -e

echo "=> [**]Install base"
bash $METEORD_DIR/lib/install_base.sh
echo "=> [**]Install node"
bash $METEORD_DIR/lib/install_node.sh
echo "=> [**]Install phantomjs"
bash $METEORD_DIR/lib/install_phantomjs.sh
echo "=> [**]Install meteor"
bash $METEORD_DIR/lib/install_meteor.sh
echo "=> [**]leanup"
bash $METEORD_DIR/lib/cleanup.sh