# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package defines messages for commonly used sensors, including\
	cam[...]"
HOMEPAGE="http://ros.org/wiki/sensor_msgs"
SRC_URI="https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/${PN}/1.12.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/std_msgs
	test? ( ros-lunar/rosbag )
	test? ( ros-lunar/rosunit )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
