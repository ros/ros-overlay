# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_head_axis"
HOMEPAGE="http://ros.org/wiki/cob_head_axis"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_head_axis/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/cob_canopen_motor
	ros-indigo/cob_generic_can
	ros-indigo/cob_srvs
	ros-indigo/cob_utilities
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

