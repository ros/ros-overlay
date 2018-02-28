# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controllers to operate the digital output of the motor controller\
	boar[...]"
HOMEPAGE="http://www.ros.org/wiki/ethercat_trigger_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/${PN}/1.10.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/pr2_controller_interface
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	sys-devel/libtool
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
