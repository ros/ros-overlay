# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A node that provides the move_base action server interface, but instead of\[...]"
HOMEPAGE="http://wiki.ros.org/pose_base_controller"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/${PN}/0.3.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/geometry_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
