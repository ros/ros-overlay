# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils versionator vcs-snapshot

DESCRIPTION="Simulation Description Format (SDF) parser"
HOMEPAGE="http://sdformat.org"
SRC_URI="http://osrf-distributions.s3.amazonaws.com/sdformat/releases/${P}.tar.bz2"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/urdfdom
	dev-libs/tinyxml
	dev-libs/boost:=
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"
S="${WORKDIR}/${PN}$(get_major_version)_${PV}"

src_configure() {
	local mycmakeargs=(
		"-DUSE_UPSTREAM_CFLAGS=OFF"
		"-DUSE_EXTERNAL_URDF=ON"
		"-DUSE_EXTERNAL_TINYXML=ON"
	)
	cmake-utils_src_configure
}

