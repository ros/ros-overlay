# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PR2 specific plugins for MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/${PN}/0.7.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/angles
	ros-kinetic/control_msgs
	ros-kinetic/eigen_conversions
	ros-kinetic/kdl_parser
	ros-kinetic/moveit_core
	ros-kinetic/pluginlib
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_mechanism_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
