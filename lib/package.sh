setup_git() {
  export MH_GIT_SERVER=${1}
  export MH_GIT_USERNAME=${2}
}

setup_package() {
  pkgname=${1}
  pkgdesc=${2}
}

use_cmake() {
  source "$MH_PKG_PATH/lib/c/cmake.sh"
}