# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Abstract physics interface designed to support simulation and rapid development of robot applications"
HOMEPAGE="https://github.com/gazebosim/gz-physics"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-physics/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="test"
#RESTRICT="!test? ( test )"
# tests dont even build
RESTRICT="test"

RDEPEND="
	dev-cpp/eigen:3
	dev-libs/gz-plugin:2=
	dev-libs/gz-utils:2=
	dev-libs/sdformat:13=
	sci-libs/dart
	sci-libs/gz-common:5=
	sci-libs/gz-math:7=
	sci-physics/bullet:="
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
