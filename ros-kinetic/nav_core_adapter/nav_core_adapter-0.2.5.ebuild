# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains adapters for using \`nav_core\` plugins as \`nav_core[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/${PN}/0.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_2d_msgs
	ros-kinetic/nav_2d_utils
	ros-kinetic/nav_core
	ros-kinetic/nav_core2
	ros-kinetic/nav_grid
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/dwb_critics )
	test? ( ros-kinetic/dwb_local_planner )
	test? ( ros-kinetic/dwb_plugins )
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
