# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The op3_action_editor package porovides editor tool to make motion."
HOMEPAGE="http://wiki.ros.org/op3_action_editor"
SRC_URI="https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/${PN}/0.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_sdk
	ros-kinetic/op3_action_module
	ros-kinetic/op3_manager
	ros-kinetic/robotis_controller
	ros-kinetic/robotis_device
	ros-kinetic/ros_mpg321_player
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	sys-libs/ncurses
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
