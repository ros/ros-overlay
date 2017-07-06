# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Merging multiple maps without knowledge of initial
  positions of robots.'"
HOMEPAGE="http://wiki.ros.org/multirobot_map_merge"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/kinetic/multirobot_map_merge/2.0.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/map_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/opencv3
	ros-kinetic/roscpp
	ros-kinetic/tf2_geometry_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

