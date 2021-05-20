#!/bin/sh
for d in */ ; do
    find "$d" ! -name 'PKGBUILD' -type f -exec rm -f {} +
    find "$d" ! -name "$(echo "$d" | sed 's:/*$::')" -type d -exec rm -rf {} +
done