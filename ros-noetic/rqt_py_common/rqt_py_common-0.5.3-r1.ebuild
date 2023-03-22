# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros-gbp/rqt-release/archive/release/noetic/${PN}/0.5.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/genpy
	ros-noetic/python_qt_binding
	ros-noetic/qt_gui
	ros-noetic/rosbag
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rostopic
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/genmsg
	ros-noetic/std_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
