# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The aubo_trajectory package'"
HOMEPAGE="http://wiki.ros.org/aubo_trajectory"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_trajectory/0.3.15-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/aubo_msgs
	ros-indigo/control_msgs
	ros-indigo/interactive_markers
	ros-indigo/moveit_core
	ros-indigo/moveit_fake_controller_manager
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/pluginlib
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

