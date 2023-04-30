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
DEB_BUILD_OPTIONS=noddebs dpkg-buildpackage -uc -us -tc -b
