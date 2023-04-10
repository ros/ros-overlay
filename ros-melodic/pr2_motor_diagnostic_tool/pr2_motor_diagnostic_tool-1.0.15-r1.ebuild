# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_motor_diagnostic_tool"
HOMEPAGE="http://ros.org/wiki/pr2_motor_diagnostic_tool"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/${PN}/1.0.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ethercat_hardware
	ros-melodic/pluginlib
	ros-melodic/pr2_controller_interface
	ros-melodic/pr2_mechanism_model
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/rospy
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
