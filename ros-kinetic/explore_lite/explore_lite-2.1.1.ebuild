# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Lightweight frontier-based exploration."
HOMEPAGE="http://wiki.ros.org/explore_lite"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/kinetic/${PN}/2.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/costmap_2d
	ros-kinetic/geometry_msgs
	ros-kinetic/map_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
