# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="The cob_hand_bridge package provides a driver for the gripper of Care-O-bot4."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_hand-release/archive/release/noetic/${PN}/0.6.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/control_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/message_runtime
	ros-noetic/rosserial_python
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
