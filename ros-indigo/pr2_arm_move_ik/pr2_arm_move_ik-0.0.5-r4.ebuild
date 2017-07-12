# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Move the pr2 arm using inverse kinematics"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/indigo/pr2_arm_move_ik/0.0.5-4.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/pr2_common_action_msgs
	ros-indigo/pr2_controllers_msgs
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

