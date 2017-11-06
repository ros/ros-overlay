# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A package implementing a ROS interface for the etherCAT Shadow Robot Dextrous Ha"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-ethercat-release/archive/release/indigo/sr_edc_ethercat_drivers/1.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/ros_ethercat_hardware
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sr_external_dependencies
	ros-indigo/sr_robot_lib
	ros-indigo/sr_robot_msgs
	ros-indigo/std_msgs
	sys-devel/binutils
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

