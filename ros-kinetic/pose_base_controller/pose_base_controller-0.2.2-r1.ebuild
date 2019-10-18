# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A node that provides the move_base action server interface, but instead of\[...]"
HOMEPAGE="http://wiki.ros.org/pose_base_controller"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/${PN}/0.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/geometry_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
