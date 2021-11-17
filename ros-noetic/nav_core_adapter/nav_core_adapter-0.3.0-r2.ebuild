# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains adapters for using \`nav_core\` plugins as \`nav_core[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/noetic/${PN}/0.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/geometry_msgs
	ros-noetic/nav_2d_msgs
	ros-noetic/nav_2d_utils
	ros-noetic/nav_core
	ros-noetic/nav_core2
	ros-noetic/nav_grid
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/tf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/dwb_critics )
	test? ( ros-noetic/dwb_local_planner )
	test? ( ros-noetic/dwb_plugins )
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
