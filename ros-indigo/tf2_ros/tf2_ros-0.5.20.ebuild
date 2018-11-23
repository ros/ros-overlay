# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the ROS bindings for the tf2 library, for both Python[...]"
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/indigo/${PN}/0.5.20-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_filters
	ros-indigo/roscpp
	ros-indigo/rosgraph
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/tf2
	ros-indigo/tf2_msgs
	ros-indigo/tf2_py
	ros-indigo/xmlrpcpp
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
