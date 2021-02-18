# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This package attempts to show the features of ROS python API step-by-step,\[...]"
HOMEPAGE="http://www.ros.org/wiki/rospy_tutorials"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/${PN}/0.10.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rospy
	ros-noetic/std_msgs
	test? ( ros-noetic/roscpp_tutorials )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
