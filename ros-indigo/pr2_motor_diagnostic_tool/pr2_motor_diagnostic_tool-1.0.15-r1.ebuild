# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_motor_diagnostic_tool"
HOMEPAGE="http://ros.org/wiki/pr2_motor_diagnostic_tool"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/indigo/${PN}/1.0.15-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ethercat_hardware
	ros-indigo/pluginlib
	ros-indigo/pr2_controller_interface
	ros-indigo/pr2_mechanism_model
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
