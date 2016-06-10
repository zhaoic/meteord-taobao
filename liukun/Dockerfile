FROM liukunmcu/microduino:test
MAINTAINER liukunmcu <lkmcudevelope@gmail.com>

RUN mv /usr/bin/phantomjs .
RUN rm /usr/local/bin/phantomjs
RUN npm -g install phantomjs-prebuilt
RUN ln -sf /usr/lib/node_modules/phantomjs-prebuilt/bin/phantomjs /usr/local/bin/phantomjs
