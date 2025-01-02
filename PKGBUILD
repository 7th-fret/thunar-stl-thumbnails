# Maintainer: j-james <jj@j-james.me>
pkgname=tumbler-stl-thumbnailer
pkgver=1
pkgrel=2
pkgdesc="Custom STL thumbnails for Tumbler"
arch=('any')
url="https://github.com/j-james/thunar-stl-thumbnails"
license=('BSD')
depends=('tumbler' 'openscad' 'imagemagick')
source=('stl.thumbnailer'
		'stl-thumbnailer.sh')
sha256sums=('fd4a8c44e4a35418e894241a3e6fefcab83279570b5e91296dde1f1179b0a0cc'
			'66f326a820abd7aec98c1d6d228cf5b4628fc29543395321b4b4f3f5ee084599')

package() {
	install -Dvm644 "stl.thumbnailer" "$pkgdir/usr/share/thumbnailers/stl.thumbnailer"
	install -Dvm755 "stl-thumbnailer.sh" "$pkgdir/usr/bin/stl-thumbnailer"
}
