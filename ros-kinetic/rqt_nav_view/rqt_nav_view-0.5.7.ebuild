# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_nav_view provides a gui for viewing navigation maps and paths"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_nav_view-release/archive/release/kinetic/rqt_nav_view/0.5.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/python_qt_binding
	ros-kinetic/qt_gui
	ros-kinetic/rospy
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/rqt_py_common
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

