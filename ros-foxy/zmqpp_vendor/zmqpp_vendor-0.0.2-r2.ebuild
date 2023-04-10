# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Vendor package for zmqpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tier4/${PN}-release/archive/release/foxy/${PN}/0.0.2-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 Mozilla-Public-License-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
