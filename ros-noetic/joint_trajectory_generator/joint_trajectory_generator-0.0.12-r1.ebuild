# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="joint_trajectory_generator action takes in a trajectory specified\
	by a[...]"
HOMEPAGE="http://ros.org/wiki/joint_trajectory_generator"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/${PN}/0.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/joint_trajectory_action
	ros-noetic/pr2_controllers_msgs
	ros-noetic/roscpp
	ros-noetic/urdf
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sci-libs/orocos_kdl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
