# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The weather outside is frightful"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PickNikRobotics/snowbot_release/archive/release/foxy/${PN}/0.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/pluginlib
	ros-foxy/rviz_common
	ros-foxy/rviz_rendering
	test? ( ros-foxy/ament_cmake_clang_format )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
