# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_tuck_arms_action package"
HOMEPAGE="http://wiki.ros.org/pr2_tuck_arms_action"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/${PN}/0.0.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/pr2_common_action_msgs
	ros-lunar/pr2_controllers_msgs
	ros-lunar/rospy
	ros-lunar/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
