#!/bin/sh
if [ "$1" = "clean" ]; then
  for d in */ ; do
      find "$d" ! -name 'PKGBUILD' -type f -exec rm -f {} +
      find "$d" ! -name "$(echo "$d" | sed 's:/*$::')" -type d -exec rm -rf {} +
      rm -r "$d/$d"
  done
  exit
fi
for d in */ ; do
  cd "$d" || exit
  if [ "$1" = "install" ]; then
    makepkg -si
  else
    makepkg -f
  fi
  cd ..
done