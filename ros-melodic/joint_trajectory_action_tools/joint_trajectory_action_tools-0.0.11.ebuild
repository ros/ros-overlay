# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="joint_trajectory_action_tools"
HOMEPAGE="http://ros.org/wiki/joint_trajectory_action_tools"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/${PN}/0.0.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_trajectory_action
	ros-melodic/pr2_controllers_msgs
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
