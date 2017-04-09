# Version 1.0.0

FROM nothingdocker/centos-systemd
RUN cd /usr/local;\ 
	wget https://nodejs.org/dist/v7.8.0/node-v7.8.0-linux-x64.tar.xz;\
	tar xJf node-v7.8.0-linux-x64.tar.xz;\
	ln -s /usr/local/node-v7.8.0-linux-x64/bin/node /usr/local/bin/node;\
	ln -s /usr/local/node-v7.8.0-linux-x64/bin/npm /usr/local/bin/npm;\
	rm -f node-v7.8.0-linux-x64.tar.xz;
 





