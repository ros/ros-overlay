# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'An Rviz plugin that implements the interaction_cursor_msgs API
	to interact w'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aleeper/interaction_cursor_3d-release/archive/release/indigo/interaction_cursor_rviz/0.0.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/interaction_cursor_msgs
	ros-indigo/rviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

