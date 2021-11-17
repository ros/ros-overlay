# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Tucks the arms of the PR2 robot into a safe position for moving the base of[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tuckarm"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/${PN}/0.6.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/pr2_mechanism_msgs
	ros-noetic/pr2_tuck_arms_action
	ros-noetic/rospy
	ros-noetic/trajectory_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
