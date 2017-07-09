# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Some basic robot controllers for use with robot_controllers_interface.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/indigo/robot_controllers/0.5.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/control_msgs
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/nav_msgs
	ros-indigo/orocos_kdl
	ros-indigo/pluginlib
	ros-indigo/robot_controllers_interface
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

