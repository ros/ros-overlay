# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the ROS bindings for the tf2 library, for both Python[...]"
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/${PN}/0.5.17-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/roscpp
	ros-lunar/rosgraph
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/tf2
	ros-lunar/tf2_msgs
	ros-lunar/tf2_py
	ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
