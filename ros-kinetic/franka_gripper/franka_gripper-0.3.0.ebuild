# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package implements the franka gripper of type Franka Hand for the use [...]"
HOMEPAGE="http://wiki.ros.org/franka_gripper"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/control_msgs
	ros-kinetic/libfranka
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
