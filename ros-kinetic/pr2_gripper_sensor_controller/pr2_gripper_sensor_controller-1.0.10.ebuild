# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor_controller package is a real-time controller that in[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_sensor_controller"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/${PN}/1.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/pluginlib
	ros-kinetic/pr2_controller_interface
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_gripper_sensor_msgs
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rosrt
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
