# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_monitoring"
HOMEPAGE="http://ros.org/wiki/cob_monitoring"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/${PN}/0.6.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

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
	net-analyzer/ifstat
	sys-apps/ipmitool
	net-misc/ntp
	dev-python/paramiko
	dev-python/mechanize
	dev-python/psutil
	dev-python/requests
	app-admin/sysstat
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
