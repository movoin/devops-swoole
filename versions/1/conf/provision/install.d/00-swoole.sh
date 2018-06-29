source /opt/docker/bin/functions.sh

cd /tmp

wget https://github.com/redis/hiredis/archive/v0.13.3.tar.gz
tar zxf v0.13.3.tar.gz

wget "$SWOOLE_URL"
tar xvf swoole-"$SWOOLE_VERSION".tgz
cd swoole-"$SWOOLE_VERSION"/
phpize
./configure \
	--enable-coroutine \
	--enable-mysqlnd \
    --enable-sockets \
    --enable-async-redis=/tmp/hiredis-0.13.3
make
make install

# Clean
rm -rf /tmp/swoole-"$SWOOLE_VERSION"/
rm -f /tmp/swoole-"$SWOOLE_VERSION".tgz
rm -f /tmp/package.xml
rm -rf /tmp/hiredis-0.13.3/
rm -f /tmp/v0.13.3.tar.gz
