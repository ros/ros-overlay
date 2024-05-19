# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Command line tools for the Gazebo libraries"
HOMEPAGE="https://github.com/gazebosim/gz-tools"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-tools/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-lang/ruby:*"
DEPEND="
	dev-build/gz-cmake:3
	!sci-electronics/gazebo"
BDEPEND="dev-build/gz-cmake:3"
