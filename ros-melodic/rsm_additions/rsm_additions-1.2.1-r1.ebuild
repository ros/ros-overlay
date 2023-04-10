# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rsm_additions package includes plugins for the Robot\
\	\	Statemachine [...]"
HOMEPAGE="https://github.com/MarcoStb1993/robot_statemachine"
SRC_URI="https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/${PN}/1.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/geometry_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rsm_core
	ros-melodic/rsm_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
