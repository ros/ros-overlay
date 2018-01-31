# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="franka_example_controllers provides example code for controlling Franka Emi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/franka_description
	ros-kinetic/franka_hw
	ros-kinetic/libfranka
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_generation
	ros-kinetic/roscpp
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
