# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The controller manager (CM) package provides the infrastructure to run controlle'"
HOMEPAGE="http://ros.org/pr2_controller_manager"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/indigo/pr2_controller_manager/1.8.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/pluginlib
	ros-indigo/pr2_controller_interface
	ros-indigo/pr2_description
	ros-indigo/pr2_hardware_interface
	ros-indigo/pr2_mechanism_diagnostics
	ros-indigo/pr2_mechanism_model
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	ros-indigo/rosparam
	ros-indigo/rospy
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

