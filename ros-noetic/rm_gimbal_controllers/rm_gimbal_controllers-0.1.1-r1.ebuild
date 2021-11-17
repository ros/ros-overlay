# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RoboMaster standard robot Gimbal controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/control_toolbox
	ros-noetic/controller_interface
	ros-noetic/dynamic_reconfigure
	ros-noetic/effort_controllers
	ros-noetic/forward_command_controller
	ros-noetic/hardware_interface
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/rm_common
	ros-noetic/rm_msgs
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
