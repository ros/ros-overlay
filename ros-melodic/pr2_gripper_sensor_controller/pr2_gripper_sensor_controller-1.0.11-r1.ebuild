# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor_controller package is a real-time controller that in[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_sensor_controller"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/melodic/${PN}/1.0.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/pluginlib
	ros-melodic/pr2_controller_interface
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_gripper_sensor_msgs
	ros-melodic/pr2_mechanism_model
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rosrt
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
