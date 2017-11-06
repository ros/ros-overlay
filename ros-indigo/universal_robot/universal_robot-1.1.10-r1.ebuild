# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drivers, description, and utilities for Universal Robot Arms."
HOMEPAGE="http://ros.org/wiki/universal_robot"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/indigo/universal_robot/1.1.10-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ur10_moveit_config
	ros-indigo/ur3_moveit_config
	ros-indigo/ur5_moveit_config
	ros-indigo/ur_bringup
	ros-indigo/ur_description
	ros-indigo/ur_driver
	ros-indigo/ur_gazebo
	ros-indigo/ur_kinematics
	ros-indigo/ur_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
