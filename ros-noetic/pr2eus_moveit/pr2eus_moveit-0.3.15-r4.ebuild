# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="pr2eus_moveit"
HOMEPAGE="http://ros.org/wiki/pr2eus_moveit"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/${PN}/0.3.15-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/moveit_msgs
	ros-noetic/pr2eus
	ros-noetic/roseus
	test? ( ros-noetic/moveit_planners_ompl )
	test? ( ros-noetic/pr2_gazebo )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
