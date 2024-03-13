# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Cross-platform C++ library for dynamically loading plugins"
HOMEPAGE="https://github.com/gazebosim/gz-plugin"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-plugin/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/gz-utils:2="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3
	sci-electronics/gz-tools:2"
BDEPEND="dev-build/gz-cmake:3"
