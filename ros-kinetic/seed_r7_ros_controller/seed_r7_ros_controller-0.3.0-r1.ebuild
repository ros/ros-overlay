# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_ros_controller package"
HOMEPAGE="http://ros.org/wiki/"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/${PN}/0.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/control_msgs
	ros-kinetic/control_toolbox
	ros-kinetic/controller_manager
	ros-kinetic/geometry_msgs
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/message_generation
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/rostest
	ros-kinetic/seed_r7_description
	ros-kinetic/seed_smartactuator_sdk
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/trajectory_msgs
	ros-kinetic/transmission_interface
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
