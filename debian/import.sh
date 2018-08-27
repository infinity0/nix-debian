#!/bin/sh
set -e
case $1 in
--upstream-version)
  tar --strip-components=1 -xf ../"nix_$2.orig.tar.xz"
  dch -v "$2-1" "New upstream release."
  ;;
*)
  exit 1
  ;;
esac
