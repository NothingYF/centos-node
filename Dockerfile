# Version 1.0.0

FROM nothingdocker/centos-systemd
RUN cd /usr/local;\ 
	wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-x64.tar.xz;\
	tar xJf node-v7.10.0-linux-x64.tar.xz;\
	ln -s /usr/local/node-v7.10.0-linux-x64/bin/node /usr/local/bin/node;\
	ln -s /usr/local/node-v7.10.0-linux-x64/bin/npm /usr/local/bin/npm;\
	rm -f node-v7.10.0-linux-x64.tar.xz;\
	alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"
 





