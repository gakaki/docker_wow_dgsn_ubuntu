FROM ubuntu:16.04

# change the source list mirror server
RUN rm -rf /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse \ 
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse \ 
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse \ 
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse \ 
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse \ 
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse \ 
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse \ 
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse \ 
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse \ 
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse \ " > /etc/apt/sources.list

#RUN cat /etc/apt/sources.list

RUN apt-get update -y --no-install-recommends 
RUN apt-get install -y --no-install-recommends  curl bridge-utils clang libicu-dev bridge-utils \
libjemalloc-dev libjemalloc1 libaspell15 libpspell-dev \
libgmp-dev librecode-dev librecode0 recode build-essential openssl \
libxpm-dev  lrzsz  libssl-dev autoconf  build-essential libyaml-dev  libxml2 libpcre3 \
libpcre3-dev zlib1g-dev libltdl-dev libssl-dev sendmail  libpng12-0  libpng12-dev libxml2-dev  libmcrypt-dev curl libcurl3 \
libgmp10 libgmp-dev librecode-dev  librecode0  recode libyaml-dev autoconf libssl-dev libcurl4-gnutls-dev libjpeg62-dev libpng12-dev \
libmysql++-dev libfreetype6-dev libc-client2007e-dev mysql-client libevent-dev libxml2-dev libtool libmcrypt-dev \
sysv-rc-conf build-essential libltdl-dev libltdl7 libtool autotools-dev libpcre3-dev libmcrypt-dev \
libxml2-dev  libfreetype6-dev  libmysqlclient-dev libgmp-dev libpspell-dev  libicu-dev  librecode-dev \
libpcre3-dev libpcre32-3 libpcrecpp0v5 zlib1g-dev libssl-dev libxml2-dev libxslt1-dev libgd-dev \
x11-common libgeoip-dev  geoip-bin geoip-database \
&& apt-get autoclean && rm -r /var/lib/apt/lists/* 

CMD ["/bin/bash"]