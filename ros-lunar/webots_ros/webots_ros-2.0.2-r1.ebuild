# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS package containing examples for interfacing ROS with the standard R[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/omichel/${PN}-release/archive/release/lunar/${PN}/2.0.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
