# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="cob_phidgets"
HOMEPAGE="http://ros.org/wiki/cob_phidgets"
SRC_URI="https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/${PN}/0.7.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/libphidgets
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
