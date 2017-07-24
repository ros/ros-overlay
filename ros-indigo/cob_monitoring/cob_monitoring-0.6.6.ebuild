# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_monitoring"
HOMEPAGE="http://ros.org/wiki/cob_monitoring"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/indigo/cob_monitoring/0.6.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/cob_light
	ros-indigo/cob_msgs
	ros-indigo/cob_script_server
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rostopic
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/topic_tools
	sys-apps/ipmitool
	dev-python/mechanize
	dev-python/psutil
	app-admin/sysstat
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

