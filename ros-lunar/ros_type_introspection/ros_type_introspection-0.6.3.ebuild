# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="The ros_type_introspection package allows the user to parse and deserialize
  RO"
HOMEPAGE="http://www.ros.org/wiki/ros_type_introspection"
SRC_URI="https://github.com/facontidavide/ros_type_introspection-release/archive/release/lunar/ros_type_introspection/0.6.3-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/rosbag
	ros-lunar/rosbag_storage
	ros-lunar/roscpp
	ros-lunar/roscpp_serialization
	ros-lunar/rostime
	ros-lunar/topic_tools
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

