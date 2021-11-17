# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roscpp is a C++ implementation of ROS. It provides\
	a <a href=\"http://[...]"
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp_serialization
	ros-noetic/roscpp_traits
	ros-noetic/rosgraph_msgs
	ros-noetic/rostime
	ros-noetic/std_msgs
	ros-noetic/xmlrpcpp
	dev-libs/boost
	dev-libs/boost[python]
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslang
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
