# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PR2 specific plugins for MoveIt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_pr2-release/archive/release/indigo/pr2_moveit_plugins/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/angles
	ros-indigo/control_msgs
	ros-indigo/eigen_conversions
	ros-indigo/kdl_parser
	ros-indigo/moveit_core
	ros-indigo/pluginlib
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/roscpp
	ros-indigo/tf_conversions
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

