# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides forward and inverse kinematics for Universal Robots designs.\
	[...]"
HOMEPAGE="http://wiki.ros.org/ur_kinematics"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_core
	ros-kinetic/moveit_kinematics
	ros-kinetic/moveit_ros_planning
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/tf_conversions
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
