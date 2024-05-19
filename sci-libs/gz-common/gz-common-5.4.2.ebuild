# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Set of libraries designed to rapidly develop robot applications"
HOMEPAGE="https://github.com/gazebosim/gz-common"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-common/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="test"
#RESTRICT="!test? ( test )"
# tests dont even build
RESTRICT="test"

RDEPEND="
	dev-libs/tinyxml2:=
	media-libs/assimp:0=
	media-libs/freeimage:=
	media-video/ffmpeg:0=
	sci-libs/gdal:0=
	sci-libs/gts:=
	sci-libs/gz-math:7=
	dev-libs/gz-utils:2=
	sys-apps/util-linux"
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"

src_configure() {
	local mycmakeargs=(
		"-DBUILD_TESTING=$(usex test)"
	)
	cmake_src_configure
}
