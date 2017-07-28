# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_monitoring"
HOMEPAGE="http://ros.org/wiki/cob_monitoring"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_monitoring/0.6.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/cob_light
	ros-kinetic/cob_msgs
	ros-kinetic/cob_script_server
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rostopic
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/topic_tools
	sys-apps/ipmitool
	dev-python/mechanize
	dev-python/psutil
	app-admin/sysstat
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

