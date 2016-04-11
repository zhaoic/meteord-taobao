FROM index.alauda.cn/library/debian:wheezy
MAINTAINER MeteorHacks Pvt Ltd.

#RUN echo "deb http://mirrors.aliyun.com/debian/ wheezy main non-free contrib" > /etc/apt/sources.list

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
