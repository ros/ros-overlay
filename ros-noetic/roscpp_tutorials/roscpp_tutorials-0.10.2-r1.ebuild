# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package attempts to show the features of ROS step-by-step,\
	includ[...]"
HOMEPAGE="http://www.ros.org/wiki/roscpp_tutorials"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/${PN}/0.10.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/rostime
	ros-noetic/std_msgs
	dev-libs/boost
	dev-libs/boost[threads]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
