# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This rqt plugin succeeds former dynamic_reconfigure\'s GUI\
\	\	\(reconfigu[...]"
HOMEPAGE="http://wiki.ros.org/rqt_reconfigure"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/python_qt_binding
	ros-melodic/rospy
	ros-melodic/rqt_console
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/rqt_py_common
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
