# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="gz-fuel_tools"
MY_P="${MY_PN}-${PV}"
CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="A client library and command line tools for interacting with Gazebo Fuel servers"
HOMEPAGE="https://github.com/gazebosim/gz-fuel-tools"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-fuel-tools/releases/${MY_P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-libs/jsoncpp:=
	dev-libs/libyaml:=
	dev-libs/libzip:=
	dev-libs/protobuf:=
	dev-libs/tinyxml2:=
	net-libs/gz-msgs:9=
	net-misc/curl:=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	dev-libs/gz-utils:2="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"

S="${WORKDIR}/${MY_P}"

src_configure() {
	local mycmakeargs=(
		"-DBUILD_TESTING=$(usex test)"
	)
	cmake_src_configure
}
