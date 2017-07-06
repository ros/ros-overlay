# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/euscollada
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pr2_description
	ros-kinetic/pr2_msgs
	ros-kinetic/roseus
	ros-kinetic/rostest
	ros-kinetic/sound_play
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rosgraph_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

