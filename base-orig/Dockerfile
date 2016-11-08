FROM debian:wheezy
MAINTAINER MeteorHacks Pvt Ltd.

RUN useradd -ms /bin/bash node

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN chown -R node $METEORD_DIR
RUN chown -R node /app

ENV HOME /home/node
USER node

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
