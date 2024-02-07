# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Provides widgets which are useful when developing robotics applications"
HOMEPAGE="https://github.com/gazebosim/gz-gui"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-gui/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/gz-plugin:2=
	dev-libs/protobuf:=
	dev-libs/tinyxml2:=
	dev-qt/qtcore:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtquickcontrols2:5
	dev-qt/qtwidgets:5
	media-gfx/gz-rendering:7=
	net-libs/gz-msgs:9=
	net-libs/gz-transport:12=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	sci-libs/gz-math:7=
	dev-libs/gz-utils:2="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"
