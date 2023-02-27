# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Vendor package for zmqpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tier4/${PN}-release/archive/release/galactic/${PN}/0.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 Mozilla-Public-License-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
