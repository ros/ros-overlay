# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A global planner plugin for move_base that simply passes the target pose on[...]"
HOMEPAGE="http://wiki.ros.org/goal_passer"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/${PN}/0.3.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_2d
	ros-melodic/nav_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
