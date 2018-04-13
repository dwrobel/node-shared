#!/bin/bash

# On Fedora > 25 building nodejs requires:
# sudo rpm -e --nodeps openssl-devel
# sudo dnf install compat-openssl10-devel

export CFLAGS="${CFLAGS} -O0 -g3 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -DZLIB_CONST -fno-delete-null-pointer-checks"

export CXXFLAGS="${CFLAGS} -O0 -g3 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -DZLIB_CONST -fno-delete-null-pointer-checks"

./configure --prefix=%{_prefix} \
           --shared \
           --shared-openssl \
           --shared-zlib \
           --shared-libuv \
           --shared-http-parser \
           --without-dtrace \
           --with-intl=system-icu \
           --openssl-use-def-ca-store

make -j $(nproc)
