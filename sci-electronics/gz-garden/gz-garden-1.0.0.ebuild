# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Garden, Gazebo's 7th named release"
HOMEPAGE="https://github.com/gazebosim/gz-garden"
SRC_URI="https://github.com/gazebosim/gz-garden/archive/refs/tags/${PN}_${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/gz-plugin:2=
	dev-libs/gz-utils:2=
	dev-libs/sdformat:13=
	media-gfx/gz-rendering:7=
	net-libs/gz-msgs:9=
	net-libs/gz-transport:12=
	sci-electronics/gz-launch:6=
	sci-electronics/gz-sim:7=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	sci-libs/gz-fuel-tools:8=
	sci-libs/gz-gui:7=
	sci-libs/gz-math:7=
	sci-libs/gz-physics:6=
	sci-libs/gz-sensors:7="
DEPEND="${RDEPEND}
	dev-util/gz-cmake:3"
BDEPEND="
	dev-util/gz-cmake:3"

S="${WORKDIR}/${PN}-${PN}_${PV}"
