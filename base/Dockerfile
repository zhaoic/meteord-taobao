FROM index.alauda.cn/library/debian:jessie
MAINTAINER MeteorHacks Pvt Ltd.

#RUN echo "deb http://mirrors.aliyun.com/debian/ wheezy main non-free contrib" > /etc/apt/sources.list

COPY debian.163.sourcelist  /etc/apt/sources.list
#COPY debian.ustc.sourcelist  /etc/apt/sources.list

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

#RUN bash $METEORD_DIR/init.sh

RUN bash $METEORD_DIR/lib/install_base.sh
RUN bash $METEORD_DIR/lib/install_node.sh

RUN npm config set registry https://registry.npm.taobao.org
RUN npm config set disturl https://npm.taobao.org/dist

RUN bash $METEORD_DIR/lib/install_phantomjs.sh
RUN bash $METEORD_DIR/lib/cleanup.sh

#RUN apt-get install -qq -y graphicsmagick

#RUN npm install -g npm@latest

RUN npm uninstall fibers && npm install -g fibers
RUN npm install -g images
RUN npm install express-xml-bodyparser --save
RUN npm install body-parser --save
#RUN cd /bundle/bundle/programs/server/node_modules/fibers && node build.js

RUN npm install -g bcrypt bootstrap-sass express i18n-react ladda lodash meteor-node-stubs moment pixeden-stroke-7-icon
RUN npm install -g qiniu qiniu-js react react-addons-pure-render-mixin react-dom react-komposer-plus react-ladda
RUN npm install -g react-mounter react-redux react-router react-simple-di redux redux-thunk sweetalert wechat

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh

