pkgver=0.3.0
pkgrel=0
epoch=1
arch=("$(uname -m)")
license=('MIT')
makedepends=('cmake' 'gcc' 'make' 'git')
md5sums=('SKIP')
url="https://github.com/mihail-8480/$pkgname"
source=("git://github.com/mihail-8480/$pkgname.git")


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

