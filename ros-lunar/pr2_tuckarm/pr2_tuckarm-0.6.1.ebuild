# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tucks the arms of the PR2 robot into a safe position for moving the base of[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tuckarm"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/${PN}/0.6.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pr2_mechanism_msgs
	ros-lunar/pr2_tuck_arms_action
	ros-lunar/rospy
	ros-lunar/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
