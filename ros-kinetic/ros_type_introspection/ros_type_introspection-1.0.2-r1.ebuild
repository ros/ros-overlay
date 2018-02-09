# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ros_type_introspection package allows the user to parse and deserialize[...]"
HOMEPAGE="http://www.ros.org/wiki/ros_type_introspection"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/kinetic/${PN}/1.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/abseil_cpp
	ros-kinetic/geometry_msgs
	ros-kinetic/rosbag
	ros-kinetic/rosbag_storage
	ros-kinetic/roscpp
	ros-kinetic/roscpp_serialization
	ros-kinetic/rostime
	ros-kinetic/sensor_msgs
	ros-kinetic/topic_tools
	test? ( ros-kinetic/tf2 )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
