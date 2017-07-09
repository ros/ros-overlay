# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Messages for describing objects and how to grasp them"
HOMEPAGE="http://ros.org/wiki/grasping_msgs"
SRC_URI="https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/kinetic/grasping_msgs/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/moveit_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

