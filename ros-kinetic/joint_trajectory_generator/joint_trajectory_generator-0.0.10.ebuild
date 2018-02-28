# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="joint_trajectory_generator action takes in a trajectory specified\
	by a[...]"
HOMEPAGE="http://ros.org/wiki/joint_trajectory_generator"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/${PN}/0.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/angles
	ros-kinetic/joint_trajectory_action
	ros-kinetic/orocos_kdl
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/roscpp
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
