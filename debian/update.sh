#!/bin/sh
set -e
git reset --hard
git clean -ffdx
uscan --verbose -dd
DEB_BUILD_OPTIONS="parallel=$(nproc) $DEB_BUILD_OPTIONS" dpkg-buildpackage "$@"
