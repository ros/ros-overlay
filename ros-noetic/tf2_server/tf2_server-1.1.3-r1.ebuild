# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="TF2 server that can provide transforms over separate TF topics"
HOMEPAGE="https://github.com/peci1/tf2_server"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/noetic/${PN}/1.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/tf2_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/tf )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
