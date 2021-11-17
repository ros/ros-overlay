# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The controller manager \(CM\) package provides the infrastructure to run co[...]"
HOMEPAGE="http://ros.org/pr2_controller_manager"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/${PN}/1.8.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/pluginlib
	ros-noetic/pr2_controller_interface
	ros-noetic/pr2_description
	ros-noetic/pr2_hardware_interface
	ros-noetic/pr2_mechanism_diagnostics
	ros-noetic/pr2_mechanism_model
	ros-noetic/pr2_mechanism_msgs
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/rosparam
	ros-noetic/rospy
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
