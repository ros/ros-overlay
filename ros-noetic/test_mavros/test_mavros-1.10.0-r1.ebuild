# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Tests for MAVROS package"
HOMEPAGE="https://github.com/mavlink/mavros.git"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/noetic/${PN}/1.10.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_toolbox
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/mavros
	ros-noetic/mavros_extras
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
