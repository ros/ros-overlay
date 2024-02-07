# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="A set of CMake modules that are used by the C++-based Gazebo projects"
HOMEPAGE="https://github.com/gazebosim/gz-cmake"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-cmake/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

src_configure() {
	local mycmakeargs=(
		"-DBUILD_TESTING=$(usex test)"
	)
	cmake_src_configure
}
