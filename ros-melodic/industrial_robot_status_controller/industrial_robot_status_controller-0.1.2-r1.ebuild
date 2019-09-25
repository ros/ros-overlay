# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ros_control controller that reports robot status using the ROS-Industrial[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gavanderhoorn/${PN}-release/archive/release/melodic/${PN}/0.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/hardware_interface
	ros-melodic/industrial_msgs
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/industrial_robot_status_interface
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
