# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mpc_local_planner_examples package"
HOMEPAGE="http://wiki.ros.org/mpc_local_planner_examples"
SRC_URI="https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/melodic/${PN}/0.0.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/mpc_local_planner
	ros-melodic/mpc_local_planner_msgs
	ros-melodic/stage_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
