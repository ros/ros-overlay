# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The steering_functions package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nobleo/${PN}-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/tf
	ros-noetic/visualization_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
