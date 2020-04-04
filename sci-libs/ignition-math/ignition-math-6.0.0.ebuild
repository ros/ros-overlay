# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils vcs-snapshot flag-o-matic

DESCRIPTION="A small, fast, and high performance math library for robot applications"
HOMEPAGE="http://ignitionrobotics.org/libraries/math"
SRC_URI="https://bitbucket.org/ignitionrobotics/ign-math/get/${PN}6_${PV}~pre4.tar.bz2"

LICENSE="Apache-2.0"
SLOT="6/6"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}6_${PV}~pre4"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_configure() {
	# upstream appends this conditionally...
	append-flags "-fPIC"
	echo "set (CMAKE_C_FLAGS_ALL \"${CXXFLAGS} \${CMAKE_C_FLAGS_ALL}\")" > "${S}/cmake/HostCFlags.cmake"
	sed -i -e "s/LINK_FLAGS_RELWITHDEBINFO \" \"/LINK_FLAGS_RELWITHDEBINFO \" ${LDFLAGS} \"/" cmake/DefaultCFlags.cmake || die
	cmake-utils_src_configure
}
