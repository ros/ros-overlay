# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The controller manager \(CM\) package provides the infrastructure to run co[...]"
HOMEPAGE="http://ros.org/pr2_controller_manager"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/${PN}/1.8.18-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/pluginlib
	ros-melodic/pr2_controller_interface
	ros-melodic/pr2_description
	ros-melodic/pr2_hardware_interface
	ros-melodic/pr2_mechanism_diagnostics
	ros-melodic/pr2_mechanism_model
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rosparam
	ros-melodic/rospy
	ros-melodic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
