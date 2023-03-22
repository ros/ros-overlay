# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This rqt plugin ROS package provides easy view of .launch files.\
  User ca[...]"
HOMEPAGE="http://wiki.ros.org/rqt_launch"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.4.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/python_qt_binding
	ros-noetic/roslaunch
	ros-noetic/rospy
	ros-noetic/rqt_console
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/rqt_py_common
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
