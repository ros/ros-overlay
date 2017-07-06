# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rqt_bhand package is intended to test the Barrett Hand in graphical mode'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/indigo/rqt_bhand/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bhand_controller
	ros-indigo/rostopic
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/sensor_msgs
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

