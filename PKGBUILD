# Maintainer: Syner <ploscarusynxy@gmail.com>
pkgname=synfetch
pkgver=r1.abcdef
pkgrel=1
pkgdesc="A fast and customizable neofetch-like system information tool with a synthwave theme and live mode"
arch=('any')
url="https://github.com/SXSLVT/synfetch"
license=('GPL3')
depends=('bash')
optdepends=(
  'pciutils: Better GPU detection (lspci)'
  'nvidia-utils: NVIDIA GPU name and usage'
  'flatpak: Flatpak package counting'
)
provides=('synfetch')
conflicts=('synfetch-git')

# Source from GitHub (main branch)
source=("git+https://github.com/SXSLVT/synfetch.git")
sha256sums=('SKIP')

pkgver() {
  cd "${srcdir}/synfetch"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd "${srcdir}/synfetch"

    # Install the main script
    install -Dm755 synfetch "${pkgdir}/usr/bin/synfetch"

    # Install license
    install -Dm644 LICENSE.md "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
