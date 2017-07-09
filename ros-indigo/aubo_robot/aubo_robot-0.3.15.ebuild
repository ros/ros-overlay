# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Description,drivers, moveit and utilities for AUBO Robot Arms.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_robot/0.3.15-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/aubo_control
	ros-indigo/aubo_description
	ros-indigo/aubo_driver
	ros-indigo/aubo_gazebo
	ros-indigo/aubo_i5_moveit_config
	ros-indigo/aubo_kinematics
	ros-indigo/aubo_msgs
	ros-indigo/aubo_new_driver
	ros-indigo/aubo_panel
	ros-indigo/aubo_trajectory
	ros-indigo/aubo_trajectory_filters
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

