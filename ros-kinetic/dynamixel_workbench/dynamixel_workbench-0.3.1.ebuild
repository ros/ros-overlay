# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Dynamixel-Workbench is dynamixel solution for ROS.\
	This metapackage al[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/${PN}/0.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_workbench_controllers
	ros-kinetic/dynamixel_workbench_operators
	ros-kinetic/dynamixel_workbench_single_manager
	ros-kinetic/dynamixel_workbench_single_manager_gui
	ros-kinetic/dynamixel_workbench_toolbox
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
