# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Simulation Description Format (SDF) parser"
HOMEPAGE="http://sdformat.org/"
SRC_URI="http://osrf-distributions.s3.amazonaws.com/sdformat/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
# subslot = libsdformat major
SLOT="0/6"
KEYWORDS="~amd64"
IUSE=""

#	>=dev-libs/urdfdom-1:=
RDEPEND="
	dev-libs/tinyxml
	dev-libs/boost:=
	sci-libs/ignition-math:4=
"
DEPEND="${RDEPEND}
	dev-lang/ruby:*
	virtual/pkgconfig
"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_configure() {
	echo "set (CMAKE_C_FLAGS_ALL \"${CXXFLAGS} \${CMAKE_C_FLAGS_ALL}\")" > "${S}/cmake/HostCFlags.cmake"
	sed -i -e "s/LINK_FLAGS_RELWITHDEBINFO \" \"/LINK_FLAGS_RELWITHDEBINFO \" ${LDFLAGS} \"/" cmake/DefaultCFlags.cmake || die
	local mycmakeargs=(
#		"-DUSE_INTERNAL_URDF=OFF"
		"-DUSE_EXTERNAL_TINYXML=ON"
	)
	cmake-utils_src_configure
}
