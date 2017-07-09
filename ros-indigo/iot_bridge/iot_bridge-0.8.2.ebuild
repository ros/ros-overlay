# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The iot_bridge provides a bi-directional bridge between ROS and the OpenHAB Home'"
HOMEPAGE="http://wiki.ros.org/iot_bridge"
SRC_URI="https://github.com/corb555/iot_bridge-release/archive/release/indigo/iot_bridge/0.8.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/message_runtime
	ros-indigo/rospy
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

