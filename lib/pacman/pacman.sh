#!/bin/sh
install() {
  prev=$PWD
  cd "${1}" || exit 1
  makepkg -si
  cd "$prev"
}

build() {
  prev=$PWD
  cd "${1}" || exit 1
  makepkg -f
  cd "$prev"
}

export MH_PKG_SOURCE="$MH_PKG_PATH/lib/$MH_PKG_BACKEND/package.sh"