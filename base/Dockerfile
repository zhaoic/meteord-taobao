FROM index.alauda.cn/zhaoic/debian:m1
MAINTAINER Maodou Ltd.

ENV METEORD_DIR /opt/meteord

ADD /opt/bundle.tar.gz /bundle

RUN cd /bundle/bundle/programs/server/
RUN npm install --unsafe-perm
RUN cd /bundle/bundle/

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
