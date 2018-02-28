# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism_controllers package contains realtime\
	controllers th[...]"
HOMEPAGE="http://ros.org/pr2_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/${PN}/1.10.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/control_toolbox
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/filters
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/pr2_controller_interface
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/pr2_mechanism_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
