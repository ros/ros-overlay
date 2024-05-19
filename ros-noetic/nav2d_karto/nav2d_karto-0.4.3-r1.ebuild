# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Graph-based Simultaneous Localization and Mapping module.\
	Includes Ope[...]"
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/noetic/${PN}/0.4.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav2d_localizer
	ros-noetic/nav2d_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/tf
	ros-noetic/visualization_msgs
	dev-cpp/eigen
	sci-libs/suitesparse
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
