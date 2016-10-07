FROM index.alauda.cn/zhaoic/debian:m1
MAINTAINER Maodou Ltd.

ENV METEORD_DIR /opt/meteord

COPY scripts $METEORD_DIR

COPY scripts/run_app.sh $METEORD_DIR/

COPY setmup /usr/local/bin/
RUN chmod +x /usr/local/bin/setmup

RUN npm install -g mdup

RUN ln -s /opt/nodejs/bin/mdup /usr/local/bin/mdup

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
