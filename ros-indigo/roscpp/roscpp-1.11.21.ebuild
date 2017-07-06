# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roscpp/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cpp_common
	ros-indigo/message_runtime
	ros-indigo/rosconsole
	ros-indigo/roscpp_serialization
	ros-indigo/roscpp_traits
	ros-indigo/rosgraph_msgs
	ros-indigo/rostime
	ros-indigo/std_msgs
	ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslang
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

