# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This rqt plugin ROS package provides easy view of .launch files.
  User can also'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_launch-release/archive/release/indigo/rqt_launch/0.4.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/python_qt_binding
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/rqt_console
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/rqt_py_common
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

