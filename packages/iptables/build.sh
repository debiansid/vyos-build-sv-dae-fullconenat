#!/bin/sh
CWD=$(pwd)
set -e

SRC=pkg-iptables
if [ ! -d ${SRC} ]; then
    echo "Source directory does not exists, please 'git clone'"
    exit 1
fi


cd ${SRC}
echo "I: Build Debian Package"
dpkg-buildpackage -Pnoguile -uc -us -tc -b
