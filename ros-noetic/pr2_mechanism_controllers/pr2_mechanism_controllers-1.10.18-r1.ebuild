# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism_controllers package contains realtime\
	controllers th[...]"
HOMEPAGE="http://ros.org/pr2_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/${PN}/1.10.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/control_toolbox
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/filters
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/pr2_controller_interface
	ros-noetic/pr2_controllers_msgs
	ros-noetic/pr2_mechanism_model
	ros-noetic/pr2_mechanism_msgs
	ros-noetic/pr2_msgs
	ros-noetic/realtime_tools
	ros-noetic/robot_mechanism_controllers
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
