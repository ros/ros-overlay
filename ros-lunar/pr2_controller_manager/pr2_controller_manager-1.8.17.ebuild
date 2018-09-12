# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The controller manager \(CM\) package provides the infrastructure to run co[...]"
HOMEPAGE="http://ros.org/pr2_controller_manager"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/${PN}/1.8.17-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/pluginlib
	ros-lunar/pr2_controller_interface
	ros-lunar/pr2_description
	ros-lunar/pr2_hardware_interface
	ros-lunar/pr2_mechanism_diagnostics
	ros-lunar/pr2_mechanism_model
	ros-lunar/pr2_mechanism_msgs
	ros-lunar/realtime_tools
	ros-lunar/roscpp
	ros-lunar/rosparam
	ros-lunar/rospy
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
