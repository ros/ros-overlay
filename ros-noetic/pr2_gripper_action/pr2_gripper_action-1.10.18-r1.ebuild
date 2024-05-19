# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_action provides an action interface for using the\
  grippe[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/${PN}/1.10.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/pr2_controllers_msgs
	ros-noetic/pr2_mechanism_controllers
	ros-noetic/pr2_mechanism_model
	ros-noetic/robot_mechanism_controllers
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
