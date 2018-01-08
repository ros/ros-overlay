# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drivers, description, and utilities for Universal Robot Arms."
HOMEPAGE="http://ros.org/wiki/universal_robot"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/kinetic/${PN}/1.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ur10_moveit_config
	ros-kinetic/ur3_moveit_config
	ros-kinetic/ur5_moveit_config
	ros-kinetic/ur_bringup
	ros-kinetic/ur_description
	ros-kinetic/ur_driver
	ros-kinetic/ur_gazebo
	ros-kinetic/ur_kinematics
	ros-kinetic/ur_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
