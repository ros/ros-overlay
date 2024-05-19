# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Provides numerous sensor models designed to generate realistic data from simulation environments"
HOMEPAGE="https://github.com/gazebosim/gz-sensors"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-sensors/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/protobuf:=
	dev-libs/sdformat:13=
	media-gfx/gz-rendering:7=
	net-libs/gz-msgs:9=
	net-libs/gz-transport:12=
	sci-libs/gz-common:5=
	sci-libs/gz-math:7="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"
