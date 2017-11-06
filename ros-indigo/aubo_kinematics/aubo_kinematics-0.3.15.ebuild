# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides forward and inverse kinematics for Aubo Robots designs."
HOMEPAGE="http://wiki.ros.org/aubo_kinematics"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_kinematics/0.3.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_kinematics
	ros-indigo/moveit_ros_planning
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf_conversions
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
