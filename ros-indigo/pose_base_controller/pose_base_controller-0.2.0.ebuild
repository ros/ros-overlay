# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A node that provides the move_base action server interface, but instead of\[...]"
HOMEPAGE="http://wiki.ros.org/pose_base_controller"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/indigo/${PN}/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
