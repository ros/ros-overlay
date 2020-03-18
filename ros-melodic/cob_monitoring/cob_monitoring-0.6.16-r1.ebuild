# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_monitoring"
HOMEPAGE="http://ros.org/wiki/cob_monitoring"
SRC_URI="https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/${PN}/0.6.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/cob_light
	ros-melodic/cob_msgs
	ros-melodic/cob_script_server
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/rostopic
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/topic_tools
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
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
