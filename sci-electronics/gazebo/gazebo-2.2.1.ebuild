EAPI=5

inherit eutils cmake-utils

DESCRIPTION="A 3D multiple robot simulator with dynamics."
HOMEPAGE="http://gazebosim.org"
SRC_URI="https://bitbucket.org/osrf/${PN}/get/${PN}-current_${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="ffmpeg bullet gts doc debug"

# http://gazebosim.org/user_guide/installation__requirements.html
RDEPEND="
	>=dev-games/ogre-1.7.1
	<dev-games/ogre-1.9
	>=dev-libs/protobuf-2.3
	dev-libs/protobuf-c
	>=dev-libs/tinyxml-2.6.2
	>=dev-libs/libxml2-2.7.7
	>=dev-cpp/tbb-3
	>=dev-libs/boost-1.40
	>=media-libs/freeimage-3[png]
	virtual/opengl
	>=net-misc/curl-4[ssl,curl_ssl_openssl]
	>=dev-libs/libtar-1.2
	>=sys-devel/libtool-2.4.2
	>=dev-games/cegui-0.7.5[ogre,truetype]
	media-libs/freeglut
	dev-qt/qtcore:4
	media-libs/openal
	dev-vcs/mercurial
	ffmpeg? ( >=virtual/ffmpeg-0.8.3 )
	bullet? ( >=sci-physics/bullet-2.81 )
	gts? ( sci-libs/gts )
"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8
	virtual/pkgconfig
	doc? ( app-doc/doxygen app-text/ronn )
"

src_unpack(){
	unpack ${A}
	SRCDIR="$(echo *${PN}*)"
	S="${WORKDIR}/${SRCDIR}"
}

src_prepare() {
	epatch "${FILESDIR}/${P}-stdint.patch"
}

src_configure() {
	if use debug; then
		CMAKE_BUILD_TYPE=RelWithDebInfo
	else
		CMAKE_BUILD_TYPE=Release
	fi
	local mycmakeargs=(
		$(cmake-utils_use_has ffmpeg)
		$(cmake-utils_use_has bullet)
		$(cmake-utils_use_has gts)
	)

	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile

	if use doc; then
		cd "${CMAKE_BUILD_DIR}"
		emake doc
	fi
}

src_install() {
	cmake-utils_src_install

	if use doc; then
		dohtml -r "${CMAKE_BUILD_DIR}"/doxygen/html/*
	fi
}
