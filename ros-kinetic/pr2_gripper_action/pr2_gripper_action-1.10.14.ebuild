# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_action provides an action interface for using the\
  grippe[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/${PN}/1.10.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_mechanism_controllers
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
