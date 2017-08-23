#!/bin/bash

set -o errexit

sudo apt-get update
sudo apt-get install -y autoconf git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

cd ${INSTALL_DIR} && wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
cd ${INSTALL_DIR} && tar -xzvf ruby-install-0.6.1.tar.gz
cd ${INSTALL_DIR}/cd ruby-install-0.6.1/ && sudo make install

cd ${INSTALL_DIR} && wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
cd ${INSTALL_DIR} && tar -xzvf chruby-0.3.9.tar.gz
cd ${INSTALL_DIR}/cd chruby-0.3.9/ && sudo make install

mkdir -p /tmp/install
cd ${INSTALL_DIR} && git clone git://github.com/ruby/ruby.git
cd ${INSTALL_DIR}/ruby && autoconf
cd ${INSTALL_DIR}/ruby && ./configure
cd ${INSTALL_DIR}/ruby && make
cd ${INSTALL_DIR}/ruby && make check
cd ${INSTALL_DIR}/ruby && sudo make install

rm -rf ${INSTALL_DIR}
