# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="LGSVL Simulator Bridge"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/foxy/${PN}/0.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake_ros
	ros-foxy/lgsvl_msgs
	ros-foxy/nav_msgs
	ros-foxy/rcl
	ros-foxy/rcutils
	ros-foxy/rosgraph_msgs
	ros-foxy/sensor_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
