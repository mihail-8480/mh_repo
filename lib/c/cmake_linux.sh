get_version() {
  curl -s https://raw.githubusercontent.com/mihail-8480/mh/master/CMakeLists.txt | grep "VERSION " | sed -n 2p | xargs | cut  -d' ' -f2
}

pkgver=$(get_version || echo 0.0.0)
pkgrel=0
epoch=1
arch=("$(uname -m)")
license=('MIT')
makedepends=('cmake' 'gcc' 'make' 'git')
md5sums=('SKIP')
url="https://$MH_GIT_SERVER/$MH_GIT_USERNAME/$pkgname"
source=("git://$MH_GIT_SERVER/$MH_GIT_USERNAME/$pkgname.git")


build() {
    cd "$srcdir/$pkgname" || exit 1
    cmake -B . \
        -DCMAKE_BUILD_TYPE='Release' \
        -DCMAKE_INSTALL_PREFIX='/usr' \
        -Wno-dev
    make -C .
}

package() {
    cd "$srcdir/$pkgname" || exit 1
    DESTDIR="$pkgdir" cmake --install .
}

