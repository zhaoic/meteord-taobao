FROM index.alauda.cn/zhaoic/meteord:1.3.1
MAINTAINER MeteorHacks Pvt Ltd.

RUN bash $METEORD_DIR/lib/install_meteor.sh
#RUN  meteor131_install_qiniu.sh

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh