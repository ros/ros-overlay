# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the ROS bindings for the tf2 library, for both Python[...]"
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/${PN}/0.5.19-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_filters
	ros-kinetic/roscpp
	ros-kinetic/rosgraph
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/tf2
	ros-kinetic/tf2_msgs
	ros-kinetic/tf2_py
	ros-kinetic/xmlrpcpp
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
