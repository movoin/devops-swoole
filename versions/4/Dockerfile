#
# Docker Image      movoin/devops-swoole
#
# MAINTAINER        Allen Luo <movoin@gmail.com>
# DOCKER-VERSION    18.09.0
#

FROM movoin/devops-php7

ENV SWOOLE_VERSION  4.0.1
ENV SWOOLE_URL      "http://pecl.php.net/get/swoole-${SWOOLE_VERSION}.tgz"
ENV SWOOLE_PORT     9501

COPY conf/          $DOCKER_CONF_PATH

RUN set -x \
    && /usr/local/bin/docker-install \
    autoconf \
    make \
    gcc \
    gcc-c++ \
    zlib-devel \
    # Bootstrap
    && $DOCKER_CONF_PATH/bin/bootstrap.sh

EXPOSE $SWOOLE_PORT
