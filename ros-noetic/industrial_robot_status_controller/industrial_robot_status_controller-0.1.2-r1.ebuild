# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ros_control controller that reports robot status using the ROS-Industrial[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gavanderhoorn/${PN}-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/hardware_interface
	ros-noetic/industrial_msgs
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/industrial_robot_status_interface
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
