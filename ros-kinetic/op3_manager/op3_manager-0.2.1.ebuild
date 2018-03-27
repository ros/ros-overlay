# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The op3_manager package"
HOMEPAGE="http://wiki.ros.org/op3_manager"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/dynamixel_sdk
	ros-kinetic/op3_action_module
	ros-kinetic/op3_action_module_msgs
	ros-kinetic/op3_balance_control
	ros-kinetic/op3_base_module
	ros-kinetic/op3_direct_control_module
	ros-kinetic/op3_head_control_module
	ros-kinetic/op3_kinematics_dynamics
	ros-kinetic/op3_localization
	ros-kinetic/op3_online_walking_module
	ros-kinetic/op3_online_walking_module_msgs
	ros-kinetic/op3_walking_module
	ros-kinetic/op3_walking_module_msgs
	ros-kinetic/open_cr_module
	ros-kinetic/robotis_controller
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/robotis_device
	ros-kinetic/robotis_framework_common
	ros-kinetic/robotis_math
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
