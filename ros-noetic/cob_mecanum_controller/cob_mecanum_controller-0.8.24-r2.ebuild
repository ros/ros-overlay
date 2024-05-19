# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_mecanum_controller_node provides a lightweight base controller for [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/4am-robotics/cob_control-release/archive/release/noetic/${PN}/0.8.24-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
