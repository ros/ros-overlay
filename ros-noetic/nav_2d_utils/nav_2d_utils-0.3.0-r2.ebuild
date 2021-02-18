# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="A handful of useful utility functions for nav_core2 packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/noetic/${PN}/0.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav_2d_msgs
	ros-noetic/nav_core2
	ros-noetic/nav_grid
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/xmlrpcpp
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
