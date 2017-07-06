# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rqt_ez_publisher package'"
HOMEPAGE="http://wiki.ros.org/rqt_ez_publisher"
SRC_URI="https://github.com/OTL/rqt_ez_publisher-release/archive/release/kinetic/rqt_ez_publisher/0.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/rospy
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/rqt_py_common
	ros-kinetic/tf
	ros-kinetic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

