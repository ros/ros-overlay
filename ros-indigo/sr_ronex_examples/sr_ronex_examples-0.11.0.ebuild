# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package containing examples for the RoNeX boards"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ronex-release/archive/release/indigo/sr_ronex_examples/0.11.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_interface
	ros-indigo/dynamic_reconfigure
	ros-indigo/pluginlib
	ros-indigo/realtime_tools
	ros-indigo/ros_ethercat_model
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sr_ronex_hardware_interface
	ros-indigo/sr_ronex_msgs
	ros-indigo/sr_ronex_utilities
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

