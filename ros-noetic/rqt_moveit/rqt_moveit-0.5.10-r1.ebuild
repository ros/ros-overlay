# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An rqt-based tool that assists monitoring tasks\
   for <a href=\"http://ro[...]"
HOMEPAGE="http://wiki.ros.org/rqt_moveit"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.5.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/python_qt_binding
	ros-noetic/rosnode
	ros-noetic/rospy
	ros-noetic/rostopic
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/rqt_py_common
	ros-noetic/rqt_topic
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
