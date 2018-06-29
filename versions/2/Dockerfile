#
# Docker Image      movoin/devops-swoole
#
# MAINTAINER        Allen Luo <movoin@gmail.com>
# DOCKER-VERSION    1.12.3
#

FROM        movoin/devops-php7
MAINTAINER  Allen Luo <movoin@gmail.com>

ENV SWOOLE_VERSION  2.2.0
ENV SWOOLE_URL      "http://pecl.php.net/get/swoole-${SWOOLE_VERSION}.tgz"
ENV SWOOLE_PORT     9501

COPY conf/ /opt/docker/

RUN set -x \
    && /usr/local/bin/docker-install \
        autoconf \
        make \
        gcc \
        zlib-devel \
    # Install
    && /opt/docker/bin/install.sh \
    # Bootstrap
    && /opt/docker/bin/bootstrap.sh \
    # Clean
    && yum -y erase zlib-devel \
    && yum clean all

EXPOSE $SWOOLE_PORT
