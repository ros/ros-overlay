# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The iot_bridge provides a bidirectional bridge between ROS and the OpenHAB Home"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/iot_bridge-release/archive/release/kinetic/iot_bridge/0.9.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/rospy
	ros-kinetic/rostopic
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

