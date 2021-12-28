# Maintainer: https://github.com/cppfever/bgfx-pkgbuild.git

_realname=bgfx
_shortcommit=417f8b8
pkgbase=mingw-w64-${_realname}
pkgname="${MINGW_PACKAGE_PREFIX}-${_realname}"
pkgver=v1.115.7933
pkgrel=1
pkgdesc="Cross-platform rendering library"
url=https://github.com/bkaradzic/bgfx.cmake.git
license=(BSD-2-Clause License)
arch=('i686' 'x86_64')
mingw_arch=('mingw32' 'mingw64' 'ucrt64' 'clang64' 'clang32')
groups=()
depends=()
makedepends=("${MINGW_PACKAGE_PREFIX}-cmake" "${MINGW_PACKAGE_PREFIX}-ninja")
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("${_realname}::git+https://github.com/bkaradzic/bgfx.cmake.git#tag=${pkgver}-${_shortcommit}")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

prepare()
{
	cd $srcdir/${_realname}
	git submodule update --init --recursive
}

build() {
	mkdir build
	cd build
	cmake -S ../${_realname} -DBGFX_BUILD_TOOLS=OFF -DBGFX_BUILD_EXAMPLES=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$pkgdir -G"Ninja"
	cmake --build .
}

package() {
	cd ${pkgname}
	cmake --install ${pkgdir} --strip
}


