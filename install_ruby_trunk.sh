#!/bin/bash

set -o errexit

INSTALL_DIR=/tmp/install

mkdir -p /tmp/install
cd ${INSTALL_DIR} && git clone git://github.com/ruby/ruby.git
cd ${INSTALL_DIR}/ruby && autoconf
cd ${INSTALL_DIR}/ruby && ./configure --prefix=/home/jleo3/.rubies/ruby-2.5.0
cd ${INSTALL_DIR}/ruby && make
cd ${INSTALL_DIR}/ruby && make check
cd ${INSTALL_DIR}/ruby && sudo make install

rm -rf ${INSTALL_DIR}
