# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="MAVLink communication library.\
	This library provide unified connection[...]"
HOMEPAGE="http://wiki.ros.org/mavros"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( GPL-3.0-only LGPL-3.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/mavlink
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-cpp/asio
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-python/empy
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
