# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'sr_robot_lib contains the robot library used in the sr_edc_ethercat_drivers. The'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-ethercat-release/archive/release/indigo/sr_robot_lib/1.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sr_ethercat_hand_config
	ros-indigo/sr_external_dependencies
	ros-indigo/sr_hardware_interface
	ros-indigo/sr_mechanism_model
	ros-indigo/sr_robot_msgs
	ros-indigo/sr_self_test
	ros-indigo/sr_utilities
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

