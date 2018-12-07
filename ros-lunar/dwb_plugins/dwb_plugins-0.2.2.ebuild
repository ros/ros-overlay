# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Standard implementations of the GoalChecker\
	  and TrajectoryGenerators[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/${PN}/0.2.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/angles
	ros-lunar/dwb_local_planner
	ros-lunar/dynamic_reconfigure
	ros-lunar/nav_2d_msgs
	ros-lunar/nav_2d_utils
	ros-lunar/nav_core2
	ros-lunar/pluginlib
	ros-lunar/roscpp
	test? ( ros-lunar/roslint )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
