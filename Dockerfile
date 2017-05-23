FROM ubuntu:16.04

RUN apt-get update \
&&  apt-get install -y software-properties-common mariadb-server \
    python-pymysql memcached python-memcache less \
&&  add-apt-repository -y cloud-archive:ocata \
&&  apt-get update \
&&  apt-get -y upgrade \
&&  apt-get -y install python-openstackclient keystone

