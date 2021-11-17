# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The mpc_local_planner_examples package"
HOMEPAGE="http://wiki.ros.org/mpc_local_planner_examples"
SRC_URI="https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/noetic/${PN}/0.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/mpc_local_planner
	ros-noetic/mpc_local_planner_msgs
	ros-noetic/stage_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
