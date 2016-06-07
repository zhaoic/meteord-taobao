FROM meteorhacks/meteord:base
MAINTAINER liukunmcu <lkmcudevelope@gmail.com>

RUN apt-get -qq update && apt-get install -qq -y \
  graphicsmagick

RUN mv /usr/bin/phantomjs .
RUN npm -g install phantomjs-prebuilt
RUN rm /usr/local/bin/phantomjs
RUN ln -s /usr/lib/node_modules/phantomjs-prebuilt/bin/phantomjs /usr/local/bin/phantomjs
