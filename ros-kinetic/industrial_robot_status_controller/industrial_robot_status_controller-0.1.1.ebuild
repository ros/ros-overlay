# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ros_control controller that reports robot status using the ROS-Industrial[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gavanderhoorn/${PN}-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/hardware_interface
	ros-kinetic/industrial_msgs
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/industrial_robot_status_interface
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
