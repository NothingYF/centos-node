# Version 1.0.1

FROM nothingdocker/centos-systemd
ENV NODE_VER v8.1.3
RUN cd /usr/local;\ 
	wget https://nodejs.org/dist/$NODE_VER/node-$NODE_VER-linux-x64.tar.xz;\
	tar xJf node-$NODE_VER-linux-x64.tar.xz;\
	ln -s /usr/local/node-$NODE_VER-linux-x64/bin/node /usr/local/bin/node;\
	ln -s /usr/local/node-$NODE_VER-linux-x64/bin/npm /usr/local/bin/npm;\
	rm -f node-$NODE_VER-linux-x64.tar.xz;
RUN echo "PATH=$PATH:/usr/local/node-$NODE_VER-linux-x64/bin" >> /etc/bashrc; \
	echo "export PATH" >> /etc/bashrc;
RUN echo "alias cnpm=\"npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc\"" >> /etc/bashrc;
 
RUN npm install -g node-gyp; \
	npm install -g gulp; \
	npm install -g pm2;



