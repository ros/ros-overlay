# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS KHI robot controller package based on ros_control"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/${PN}/1.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/diagnostic_updater
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/joint_state_controller
	ros-noetic/joint_trajectory_controller
	ros-noetic/khi_robot_msgs
	ros-noetic/position_controllers
	ros-noetic/trajectory_msgs
	ros-noetic/transmission_interface
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/realtime_tools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
