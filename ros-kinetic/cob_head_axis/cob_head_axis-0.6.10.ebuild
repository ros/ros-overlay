# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_head_axis"
HOMEPAGE="http://ros.org/wiki/cob_head_axis"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_head_axis/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/cob_canopen_motor
	ros-kinetic/cob_generic_can
	ros-kinetic/cob_srvs
	ros-kinetic/cob_utilities
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

