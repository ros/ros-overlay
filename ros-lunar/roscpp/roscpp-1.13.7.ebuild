# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roscpp is a C++ implementation of ROS. It provides\
	a <a href=\"http://[...]"
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/${PN}/1.13.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cpp_common
	ros-lunar/message_runtime
	ros-lunar/rosconsole
	ros-lunar/roscpp_serialization
	ros-lunar/roscpp_traits
	ros-lunar/rosgraph_msgs
	ros-lunar/rostime
	ros-lunar/std_msgs
	ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roslang
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
