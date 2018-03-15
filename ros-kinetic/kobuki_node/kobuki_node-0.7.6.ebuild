# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver."
HOMEPAGE="http://ros.org/wiki/kobuki_node"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/${PN}/0.7.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/capabilities
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_sigslots
	ros-kinetic/ecl_streams
	ros-kinetic/ecl_threads
	ros-kinetic/geometry_msgs
	ros-kinetic/kobuki_driver
	ros-kinetic/kobuki_ftdi
	ros-kinetic/kobuki_keyop
	ros-kinetic/kobuki_msgs
	ros-kinetic/kobuki_rapps
	ros-kinetic/kobuki_safety_controller
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
