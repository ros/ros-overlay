# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The joint_trajectory_action is a node that exposes an action interface\
   [...]"
HOMEPAGE="http://ros.org/wiki/joint_trajectory_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/indigo/joint_trajectory_action/1.10.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/pr2_controllers_msgs
	ros-indigo/roscpp
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
