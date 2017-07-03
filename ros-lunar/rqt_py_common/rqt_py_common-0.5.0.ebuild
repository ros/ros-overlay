# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Python.
 "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt-release/archive/release/lunar/rqt_py_common/0.5.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib
	ros-lunar/genpy
	ros-lunar/python_qt_binding
	ros-lunar/qt_gui
	ros-lunar/rosbag
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/rostopic
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/genmsg
	ros-lunar/std_msgs
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

