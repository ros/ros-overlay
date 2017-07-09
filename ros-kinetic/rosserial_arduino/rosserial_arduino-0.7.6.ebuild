# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Libraries and examples for ROSserial usage on Arduino/AVR Platforms"
HOMEPAGE="http://ros.org/wiki/rosserial_arduino"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_arduino/0.7.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/rosserial_client
	ros-kinetic/rosserial_msgs
	dev-embedded/arduino
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

