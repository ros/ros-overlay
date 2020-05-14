# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The gripper_action_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/${PN}/0.17.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/angles
	ros-melodic/cmake_modules
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/hardware_interface
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
