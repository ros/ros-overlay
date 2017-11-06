# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://ros.org/wiki/footstep_planner"
SRC_URI="https://github.com/AravindaDP/humanoid_navigation-release/archive/release/indigo/footstep_planner/0.4.1-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/angles
	ros-indigo/gridmap_2d
	ros-indigo/humanoid_nav_msgs
	ros-indigo/map_server
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sbpl
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

