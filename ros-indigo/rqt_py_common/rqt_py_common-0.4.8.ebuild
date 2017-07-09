# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'rqt_py_common provides common functionality for rqt plugins written in Python.
 '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt-release/archive/release/indigo/rqt_py_common/0.4.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/genpy
	ros-indigo/python_qt_binding
	ros-indigo/qt_gui
	ros-indigo/rosbag
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rostopic
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/genmsg
	ros-indigo/std_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

