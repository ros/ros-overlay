# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The raspigibbon_control package"
HOMEPAGE="http://github.com/rt-net/RaspberryPiGibbon/wiki"
SRC_URI="https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/${PN}/0.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/gazebo_ros_control
	ros-kinetic/hardware_interface
	ros-kinetic/joint_state_controller
	ros-kinetic/robot_state_publisher
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
