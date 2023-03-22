# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Some basic robot controllers for use with robot_controllers_interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/noetic/${PN}/0.7.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/control_msgs
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/robot_controllers_interface
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
