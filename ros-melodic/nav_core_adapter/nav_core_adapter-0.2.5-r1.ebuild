# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains adapters for using \`nav_core\` plugins as \`nav_core[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/melodic/${PN}/0.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/geometry_msgs
	ros-melodic/nav_2d_msgs
	ros-melodic/nav_2d_utils
	ros-melodic/nav_core
	ros-melodic/nav_core2
	ros-melodic/nav_grid
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/tf
	ros-melodic/visualization_msgs
	test? ( ros-melodic/dwb_critics )
	test? ( ros-melodic/dwb_local_planner )
	test? ( ros-melodic/dwb_plugins )
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
