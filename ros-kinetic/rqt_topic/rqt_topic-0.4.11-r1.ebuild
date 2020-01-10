# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_topic provides a GUI plugin for displaying debug information about ROS [...]"
HOMEPAGE="http://wiki.ros.org/rqt_topic"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.4.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/python_qt_binding
	ros-kinetic/rostopic
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/std_msgs
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
