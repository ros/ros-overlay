# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
	[...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/${PN}/0.11.16-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rosbridge_library
	ros-noetic/rosgraph
	ros-noetic/rosnode
	ros-noetic/rospy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
