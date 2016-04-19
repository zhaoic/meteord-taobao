FROM index.alauda.cn/library/debian:wheezy
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

RUN npm -g install npm@latest

RUN npm uninstall fibers && npm install fibers
#RUN cd /bundle/bundle/programs/server/node_modules/fibers && node build.js

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
