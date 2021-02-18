# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="rosserial for Arduino/AVR platforms."
HOMEPAGE="http://ros.org/wiki/rosserial_arduino"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rospy
	ros-noetic/rosserial_client
	ros-noetic/rosserial_msgs
	ros-noetic/rosserial_python
	dev-embedded/arduino
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
