# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="C++ library designed to provide an abstraction for different rendering engines"
HOMEPAGE="https://github.com/gazebosim/gz-rendering"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-rendering/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="optix"

RDEPEND="
	dev-games/ogre:0=
	>=dev-games/ogre-next-2.3.1
	dev-libs/gz-plugin:2=
	sci-libs/gz-math:7=
	sci-libs/gz-common:5=
	dev-libs/gz-utils:2=
	media-libs/freeimage:=
	media-libs/libglvnd
	optix? (
		dev-libs/optix
		dev-util/nvidia-cuda-toolkit
	)"
DEPEND="${RDEPEND}
	dev-util/gz-cmake:3"
BDEPEND="
	dev-util/gz-cmake:3"

src_configure() {
	local mycmakeargs=(
		# "-DBUILD_TESTING=$(usex test)"
		"-DSKIP_optix=$(usex optix false true)"
	)
	cmake_src_configure
}
