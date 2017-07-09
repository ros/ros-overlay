# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Python "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt-release/archive/release/kinetic/rqt_py_common/0.5.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/genpy
	ros-kinetic/python_qt_binding
	ros-kinetic/qt_gui
	ros-kinetic/rosbag
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rostopic
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/genmsg
	ros-kinetic/std_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

