# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="tf2 is the second generation of the transform library, which lets\
	the [...]"
HOMEPAGE="http://www.ros.org/wiki/tf2"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/${PN}/0.13.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/console_bridge_vendor
	ros-foxy/geometry_msgs
	ros-foxy/rcutils
	test? ( ros-foxy/ament_cmake_gtest )
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
