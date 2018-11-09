# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This rqt plugin ROS package provides easy view of .launch files.\
  User ca[...]"
HOMEPAGE="http://wiki.ros.org/rqt_launch"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.8-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/python_qt_binding
	ros-melodic/roslaunch
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
