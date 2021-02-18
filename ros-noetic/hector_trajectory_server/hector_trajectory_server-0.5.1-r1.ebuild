# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="hector_trajectory_server keeps track of tf trajectories extracted from tf d[...]"
HOMEPAGE="http://ros.org/wiki/hector_trajectory_server"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/${PN}/0.5.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/hector_map_tools
	ros-noetic/hector_nav_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
