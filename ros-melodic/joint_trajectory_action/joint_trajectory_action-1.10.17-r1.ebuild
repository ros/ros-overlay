# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The joint_trajectory_action is a node that exposes an action interface\
   [...]"
HOMEPAGE="http://ros.org/wiki/joint_trajectory_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/${PN}/1.10.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/pr2_controllers_msgs
	ros-melodic/roscpp
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
