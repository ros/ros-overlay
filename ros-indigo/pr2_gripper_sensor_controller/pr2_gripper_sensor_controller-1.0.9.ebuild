# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor_controller package is a real-time controller that in[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_sensor_controller"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/indigo/pr2_gripper_sensor_controller/1.0.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/pluginlib
	ros-indigo/pr2_controller_interface
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/pr2_mechanism_model
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rosrt
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
