# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains scripts for making a PR2 deliver a small  object from one"
HOMEPAGE="http://ros.org/wiki/pr2_delivery"
SRC_URI="https://github.com/pr2-gbp/pr2_delivery-release/archive/release/indigo/pr2_delivery/1.0.6-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/pr2_gripper_sensor_action
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/pr2_move_base
	ros-indigo/pr2_tuck_arms_action
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

