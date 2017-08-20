#!/bin/bash

set -o errexit

INSTALL_DIR=/tmp/install

cd ${INSTALL_DIR} && git clone git://github.com/ruby/ruby.git
cd ${INSTALL_DIR} && autoconf
cd ${INSTALL_DIR} && ./configure --prefix=/home/jleo3/.rubies/ruby-2.5.0
cd ${INSTALL_DIR} && make
cd ${INSTALL_DIR} && make check
cd ${INSTALL_DIR} && sudo make install

rm -rf /tmp/install
