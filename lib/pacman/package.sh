source "$MH_PKG_PATH/lib/generic.sh"

setup_package() {
  pkgname=${1}
  pkgdesc=${2}
  pkgver=${3}
  depends=()
}

add_dependency() {
  depends+=(${1})
}

use_cmake() {
  source "$MH_PKG_PATH/lib/pacman/cmake.sh"
}
