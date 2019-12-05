# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The seed_r7_ros_controller package"
HOMEPAGE="http://ros.org/wiki/"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/controller_manager
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/message_generation
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rostest
	ros-melodic/seed_r7_description
	ros-melodic/seed_smartactuator_sdk
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/trajectory_msgs
	ros-melodic/transmission_interface
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
