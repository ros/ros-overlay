# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Classes and functions for robot applications"
HOMEPAGE="https://github.com/gazebosim/gz-utils"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-utils/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-build/gz-cmake:3"
BDEPEND="dev-build/gz-cmake:3"
