EAPI=5

inherit cmake-utils

DESCRIPTION="Multibody Physics API."
HOMEPAGE="https://simtk.org/projects/simbody"
SRC_URI="https://github.com/${PN}/${PN}/archive/Simbody-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE="debug doc"

DEPEND="doc? ( app-doc/doxygen[dot,latex] )
		virtual/lapack
		media-libs/freeglut
		x11-libs/libXi
		x11-libs/libXmu"
RDEPEND="${DEPEND}"

src_unpack() {
	default
	mv simbody-Simbody* ${P} || die
}

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	CMAKE_BUILD_TYPE="release"
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install

	insinto /usr/share/cmake/Modules/
	doins "${S}/cmake/SimbodyConfig.cmake"
}
