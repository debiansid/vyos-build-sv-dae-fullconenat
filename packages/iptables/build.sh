#!/bin/sh
CWD=$(pwd)
set -e

SRC=iptables-1.8.9
if [ ! -d ${SRC} ]; then
    echo "Source directory does not exists, please 'git clone'"
    exit 1
fi


cd ${SRC}
echo "I: Build Debian Package"
dpkg-buildpackage -uc -us -tc -b