# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The weather outside is frightful"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PickNikRobotics/snowbot_release/archive/release/galactic/${PN}/0.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_cmake_ros
	ros-galactic/geometry_msgs
	ros-galactic/pluginlib
	ros-galactic/rviz_common
	ros-galactic/rviz_rendering
	test? ( ros-galactic/ament_cmake_clang_format )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
