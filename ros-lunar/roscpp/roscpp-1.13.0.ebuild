# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/roscpp"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/roscpp/1.13.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

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

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

