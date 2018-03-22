# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ros_type_introspection package allows the user to parse and deserialize[...]"
HOMEPAGE="http://www.ros.org/wiki/ros_type_introspection"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/indigo/${PN}/1.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/abseil_cpp
	ros-indigo/geometry_msgs
	ros-indigo/rosbag
	ros-indigo/rosbag_storage
	ros-indigo/roscpp
	ros-indigo/roscpp_serialization
	ros-indigo/rostime
	ros-indigo/sensor_msgs
	ros-indigo/topic_tools
	test? ( ros-indigo/tf2 )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
