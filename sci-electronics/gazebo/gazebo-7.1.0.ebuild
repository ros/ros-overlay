# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-electronics/gazebo/gazebo-7.1.0.ebuild,v 1.2 2015/23/09 12:14:40 Hunter.Allen Exp $

EAPI=6

inherit cmake-utils versionator vcs-snapshot flag-o-matic

DESCRIPTION="A 3D multiple robot simulator with dynamics"
HOMEPAGE="http://gazebosim.org/"
MY_MAJORV=$(get_major_version)
SRC_URI="https://bitbucket.org/osrf/${PN}/get/${PN}${MY_MAJORV}_${PV}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="cpu_flags_x86_sse2 libav test"

RDEPEND="
	>=dev-libs/protobuf-2.3.0
	virtual/opengl
	media-libs/openal
	net-misc/curl
	dev-libs/tinyxml
	dev-libs/libtar
	dev-cpp/tbb
	sci-physics/simbody
	net-libs/ignition-transport
	dev-libs/tinyxml2
	>=dev-games/ogre-1.7.4
	sci-libs/libccd
	libav? ( media-video/libav:= )
	!libav? ( media-video/ffmpeg:= )
	sci-libs/gts
	>=sci-physics/bullet-2.82
	>=dev-libs/sdformat-2.3.1
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	dev-qt/qtwebkit:4
	dev-qt/qtxmlpatterns:4
	dev-libs/boost:=[threads]
	sci-libs/gdal
	virtual/libusb:1
	dev-libs/libspnav
	media-libs/freeimage
"
DEPEND="${RDEPEND}
	dev-qt/qttest:4
	app-text/ronn
	virtual/pkgconfig
"
S="${WORKDIR}/${PN}${MY_MAJORV}_${PV}"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_configure() {
	# doesn't build without it
	append-cxxflags "-std=c++11"
	# doesn't build with as-needed either
	append-ldflags "-Wl,--no-as-needed"
	local mycmakeargs=(
		"-DUSE_UPSTREAM_CFLAGS=OFF"
		"-DSSE2_FOUND=$(usex cpu_flags_x86_sse2 TRUE FALSE)"
		"-DUSE_HOST_CFLAGS=FALSE"
		"-DENABLE_TESTS_COMPILATION=$(usex test TRUE FALSE)"
		"-DENABLE_SCREEN_TESTS=FALSE"
	)
	cmake-utils_src_configure
}
