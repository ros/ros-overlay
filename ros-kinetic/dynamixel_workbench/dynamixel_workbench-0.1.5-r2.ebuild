# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Dynamixelworkbench is dynamixel solution for ROS	This metapackage can help"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench/0.1.5-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_workbench_controllers
	ros-kinetic/dynamixel_workbench_msgs
	ros-kinetic/dynamixel_workbench_single_manager
	ros-kinetic/dynamixel_workbench_single_manager_gui
	ros-kinetic/dynamixel_workbench_toolbox
	ros-kinetic/dynamixel_workbench_tutorials
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

