# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/indigo/kobuki_node/0.6.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/capabilities
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/ecl_exceptions
	ros-indigo/ecl_sigslots
	ros-indigo/ecl_streams
	ros-indigo/ecl_threads
	ros-indigo/geometry_msgs
	ros-indigo/kobuki_driver
	ros-indigo/kobuki_ftdi
	ros-indigo/kobuki_keyop
	ros-indigo/kobuki_msgs
	ros-indigo/kobuki_rapps
	ros-indigo/kobuki_safety_controller
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
