# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The gripper_action_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/${PN}/0.18.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/cmake_modules
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/hardware_interface
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
