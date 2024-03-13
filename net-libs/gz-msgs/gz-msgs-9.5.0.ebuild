# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Messages for Gazebo robot simulation"
HOMEPAGE="https://github.com/gazebosim/gz-msgs"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-msgs/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/protobuf:=
	sci-libs/gz-math:7=
	dev-libs/gz-utils:2=
	dev-libs/tinyxml2:=
	sci-electronics/gz-tools:2"
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="dev-build/gz-cmake:3"
