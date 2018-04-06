# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/${PN}/0.2.6-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/rospy
	ros-lunar/rostopic
	ros-lunar/sensor_msgs
	ros-lunar/teleop_tools_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
