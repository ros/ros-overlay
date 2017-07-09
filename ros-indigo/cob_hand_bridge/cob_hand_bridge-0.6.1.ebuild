# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The cob_hand_bridge package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_hand-release/archive/release/indigo/cob_hand_bridge/0.6.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/angles
	ros-indigo/control_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/message_runtime
	ros-indigo/rosserial_python
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

