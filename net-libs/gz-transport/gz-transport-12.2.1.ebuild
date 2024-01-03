# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Transport library for component communication based on publication/subscription and service calls"
HOMEPAGE="https://github.com/gazebosim/gz-transport"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-transport/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-db/sqlite:3
	dev-libs/protobuf:=
	net-libs/cppzmq
	net-libs/gz-msgs:9=
	>=net-libs/zeromq-4.2.0:=
	sys-apps/util-linux
	sci-electronics/gz-tools:2"
DEPEND="${RDEPEND}
	dev-util/gz-cmake:3"
BDEPEND="
	dev-util/gz-cmake:3
	virtual/pkgconfig"
